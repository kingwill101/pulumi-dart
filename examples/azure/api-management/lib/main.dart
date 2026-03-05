import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure/pulumi_azure.dart' as azure;

class AzureApiManagementStack extends pulumi.Stack {
  late final pulumi.Output<String> endpoint;
  late final pulumi.Output<String> key;

  AzureApiManagementStack() : super() {
    final config = pulumi.Config();
    final azureConfig = pulumi.Config('azure');
    final backendUrl =
        config.get('backendUrl') ?? 'https://postman-echo.com/get';
    final location = azureConfig.get('location') ?? 'westus';

    final resourceGroup = azure.core.ResourceGroup(
      'resourceGroup',
      args: azure.core.ResourceGroupArgs(location: location.output()),
    );

    final service = azure.apimanagement.Service(
      'greeting-service',
      args: azure.apimanagement.ServiceArgs(
        resourceGroupName: resourceGroup.name,
        location: resourceGroup.location,
        skuName: 'Developer_1'.output(),
        publisherName: 'YourCompany'.output(),
        publisherEmail: 'api@yourcompany.com'.output(),
      ),
    );

    final api = azure.apimanagement.Api(
      'greeting-api',
      args: azure.apimanagement.ApiArgs(
        resourceGroupName: resourceGroup.name,
        apiManagementName: service.name,
        displayName: 'Greetings'.output(),
        path: 'hello'.output(),
        protocols: ['https'].output(),
        revision: '1'.output(),
        serviceUrl: backendUrl.output(),
      ),
    );

    final operation = azure.apimanagement.ApiOperation(
      'hello',
      args: azure.apimanagement.ApiOperationArgs(
        resourceGroupName: resourceGroup.name,
        apiManagementName: service.name,
        apiName: api.name,
        urlTemplate: '/{name}'.output(),
        method: 'GET'.output(),
        displayName: 'Say Hello'.output(),
        operationId: 'sayhello'.output(),
        templateParameters: [
          azure.apimanagement.ApiOperationTemplateParameter(
            name: 'name'.output(),
            required: true.output(),
            type: 'string'.output(),
          ),
        ].output(),
      ),
    );

    azure.apimanagement.ApiOperationPolicy(
      'hello-policy',
      args: azure.apimanagement.ApiOperationPolicyArgs(
        resourceGroupName: resourceGroup.name,
        apiManagementName: service.name,
        apiName: api.name,
        operationId: operation.operationId,
        xmlContent:
            '''
<policies>
    <inbound>
        <base />
        <rewrite-uri template="?name={name}" />
        <cache-lookup vary-by-developer="false" vary-by-developer-groups="false" />
    </inbound>
    <backend>
        <base />
    </backend>
    <outbound>
        <base />
        <cache-store duration="30" />
    </outbound>
    <on-error>
        <base />
    </on-error>
</policies>
'''
                .output(),
      ),
    );

    final product = azure.apimanagement.Product(
      'greeting-product',
      args: azure.apimanagement.ProductArgs(
        resourceGroupName: resourceGroup.name,
        apiManagementName: service.name,
        productId: 'greeting'.output(),
        displayName: 'Product for Greetings'.output(),
        published: true.output(),
        subscriptionRequired: true.output(),
      ),
    );

    azure.apimanagement.ProductApi(
      'greeting-product-api',
      args: azure.apimanagement.ProductApiArgs(
        resourceGroupName: resourceGroup.name,
        apiManagementName: service.name,
        apiName: api.name,
        productId: product.productId,
      ),
    );

    final user = azure.apimanagement.User(
      'bot',
      args: azure.apimanagement.UserArgs(
        resourceGroupName: resourceGroup.name,
        apiManagementName: service.name,
        userId: 'bot'.output(),
        firstName: 'Robo'.output(),
        lastName: 'Bot'.output(),
        email: 'robobot@yourcompany.com'.output(),
      ),
    );

    final subscription = azure.apimanagement.Subscription(
      'bot-subscription',
      args: azure.apimanagement.SubscriptionArgs(
        resourceGroupName: resourceGroup.name,
        apiManagementName: service.name,
        displayName: 'Bot Subscription'.output(),
        productId: product.id,
        userId: user.id,
        state: 'active'.output(),
      ),
    );

    endpoint = pulumi.Output.tuple(
      service.gatewayUrl,
      api.path,
    ).apply((values) => '${values.$1}/${values.$2}/Pulumi');
    key = subscription.primaryKey;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('endpoint', endpoint),
      pulumi.OutputProperty('key', key),
    ];
  }
}
