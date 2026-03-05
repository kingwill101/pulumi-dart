import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure/pulumi_azure.dart' as azure;

import 'token.dart';

class AzureStreamAnalyticsStack extends pulumi.Stack {
  late final pulumi.Output<String> sasToken;
  late final pulumi.Output<String> inputEndpoint;

  AzureStreamAnalyticsStack() : super() {
    final resourceGroup = azure.core.ResourceGroup('streams-rg');

    final namespace = azure.eventhub.EventHubNamespace(
      'streams-ns',
      args: azure.eventhub.EventHubNamespaceArgs(
        resourceGroupName: resourceGroup.name,
        sku: 'Standard'.output(),
      ),
    );

    final inputHub = azure.eventhub.EventHub(
      'inputs',
      args: azure.eventhub.EventHubArgs(
        resourceGroupName: resourceGroup.name,
        namespaceName: namespace.name,
        partitionCount: 2.output(),
        messageRetention: 7.output(),
      ),
    );

    final consumerGroup = azure.eventhub.ConsumerGroup(
      'analytics',
      args: azure.eventhub.ConsumerGroupArgs(
        resourceGroupName: resourceGroup.name,
        namespaceName: namespace.name,
        eventhubName: inputHub.name,
      ),
    );

    final outputHub = azure.eventhub.EventHub(
      'outputs',
      args: azure.eventhub.EventHubArgs(
        resourceGroupName: resourceGroup.name,
        namespaceName: namespace.name,
        partitionCount: 2.output(),
        messageRetention: 7.output(),
      ),
    );

    final job = azure.streamanalytics.Job(
      'job',
      args: azure.streamanalytics.JobArgs(
        resourceGroupName: resourceGroup.name,
        compatibilityLevel: '1.1'.output(),
        dataLocale: 'en-GB'.output(),
        eventsLateArrivalMaxDelayInSeconds: 60.output(),
        eventsOutOfOrderMaxDelayInSeconds: 50.output(),
        eventsOutOfOrderPolicy: 'Adjust'.output(),
        outputErrorPolicy: 'Drop'.output(),
        streamingUnits: 1.output(),
        transformationQuery:
            '''
SELECT
    Make,
    SUM(Sales) AS Sales
INTO
    [MyOutput]
FROM
    [MyInput] TIMESTAMP BY Time
GROUP BY
    Make,
    TumblingWindow(minute, 1)
'''
                .output(),
      ),
    );

    azure.streamanalytics.StreamInputEventHub(
      'input',
      args: azure.streamanalytics.StreamInputEventHubArgs(
        name: 'MyInput'.output(),
        resourceGroupName: resourceGroup.name,
        streamAnalyticsJobName: job.name,
        servicebusNamespace: namespace.name,
        eventhubName: inputHub.name,
        eventhubConsumerGroupName: consumerGroup.name,
        sharedAccessPolicyKey: namespace.defaultPrimaryKey,
        sharedAccessPolicyName: 'RootManageSharedAccessKey'.output(),
        serialization: azure.streamanalytics
            .StreamInputEventHubSerialization(
              type: 'Json'.output(),
              encoding: 'UTF8'.output(),
            )
            .output(),
      ),
    );

    azure.streamanalytics.OutputEventHub(
      'output',
      args: azure.streamanalytics.OutputEventHubArgs(
        name: 'MyOutput'.output(),
        resourceGroupName: resourceGroup.name,
        streamAnalyticsJobName: job.name,
        servicebusNamespace: namespace.name,
        eventhubName: outputHub.name,
        sharedAccessPolicyKey: namespace.defaultPrimaryKey,
        sharedAccessPolicyName: 'RootManageSharedAccessKey'.output(),
        serialization: azure.streamanalytics
            .OutputEventHubSerialization(
              type: 'Json'.output(),
              encoding: 'UTF8'.output(),
              format: 'Array'.output(),
            )
            .output(),
      ),
    );

    final url = namespace.name.apply(
      (namespaceName) => 'https://$namespaceName.servicebus.windows.net',
    );

    sasToken = pulumi.Output.tuple(url, namespace.defaultPrimaryKey).apply(
      (values) => createSharedAccessToken(
        values.$1,
        'RootManageSharedAccessKey',
        values.$2,
      ),
    );

    inputEndpoint = pulumi.Output.tuple(url, inputHub.name).apply(
      (values) =>
          '${values.$1}/${values.$2}/messages?timeout=60&api-version=2014-01',
    );
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('sasToken', sasToken),
      pulumi.OutputProperty('inputEndpoint', inputEndpoint),
    ];
  }
}
