import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_args.dart';
import 'connector_capacity.dart';
import 'connector_kafka_cluster.dart';
import 'connector_kafka_cluster_client_authentication.dart';
import 'connector_kafka_cluster_encryption_in_transit.dart';
import 'connector_log_delivery.dart';
import 'connector_plugin.dart';
import 'connector_worker_configuration.dart';

/// Provides an Amazon MSK Connect Connector resource.
///
/// ## Example Usage
///
/// ### Basic configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.mskconnect.Connector("example", {
///     name: "example",
///     kafkaconnectVersion: "2.7.1",
///     capacity: {
///         autoscaling: {
///             mcuCount: 1,
///             minWorkerCount: 1,
///             maxWorkerCount: 2,
///             scaleInPolicy: {
///                 cpuUtilizationPercentage: 20,
///             },
///             scaleOutPolicy: {
///                 cpuUtilizationPercentage: 80,
///             },
///         },
///     },
///     connectorConfiguration: {
///         "connector.class": "com.github.jcustenborder.kafka.connect.simulator.SimulatorSinkConnector",
///         "tasks.max": "1",
///         topics: "example",
///     },
///     kafkaCluster: {
///         apacheKafkaCluster: {
///             bootstrapServers: exampleAwsMskCluster.bootstrapBrokersTls,
///             vpc: {
///                 securityGroups: [exampleAwsSecurityGroup.id],
///                 subnets: [
///                     example1.id,
///                     example2.id,
///                     example3.id,
///                 ],
///             },
///         },
///     },
///     kafkaClusterClientAuthentication: {
///         authenticationType: "NONE",
///     },
///     kafkaClusterEncryptionInTransit: {
///         encryptionType: "TLS",
///     },
///     plugins: [{
///         customPlugin: {
///             arn: exampleAwsMskconnectCustomPlugin.arn,
///             revision: exampleAwsMskconnectCustomPlugin.latestRevision,
///         },
///     }],
///     serviceExecutionRoleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.mskconnect.Connector("example",
///     name="example",
///     kafkaconnect_version="2.7.1",
///     capacity={
///         "autoscaling": {
///             "mcu_count": 1,
///             "min_worker_count": 1,
///             "max_worker_count": 2,
///             "scale_in_policy": {
///                 "cpu_utilization_percentage": 20,
///             },
///             "scale_out_policy": {
///                 "cpu_utilization_percentage": 80,
///             },
///         },
///     },
///     connector_configuration={
///         "connector.class": "com.github.jcustenborder.kafka.connect.simulator.SimulatorSinkConnector",
///         "tasks.max": "1",
///         "topics": "example",
///     },
///     kafka_cluster={
///         "apache_kafka_cluster": {
///             "bootstrap_servers": example_aws_msk_cluster["bootstrapBrokersTls"],
///             "vpc": {
///                 "security_groups": [example_aws_security_group["id"]],
///                 "subnets": [
///                     example1["id"],
///                     example2["id"],
///                     example3["id"],
///                 ],
///             },
///         },
///     },
///     kafka_cluster_client_authentication={
///         "authentication_type": "NONE",
///     },
///     kafka_cluster_encryption_in_transit={
///         "encryption_type": "TLS",
///     },
///     plugins=[{
///         "custom_plugin": {
///             "arn": example_aws_mskconnect_custom_plugin["arn"],
///             "revision": example_aws_mskconnect_custom_plugin["latestRevision"],
///         },
///     }],
///     service_execution_role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.MskConnect.Connector("example", new()
///     {
///         Name = "example",
///         KafkaconnectVersion = "2.7.1",
///         Capacity = new Aws.MskConnect.Inputs.ConnectorCapacityArgs
///         {
///             Autoscaling = new Aws.MskConnect.Inputs.ConnectorCapacityAutoscalingArgs
///             {
///                 McuCount = 1,
///                 MinWorkerCount = 1,
///                 MaxWorkerCount = 2,
///                 ScaleInPolicy = new Aws.MskConnect.Inputs.ConnectorCapacityAutoscalingScaleInPolicyArgs
///                 {
///                     CpuUtilizationPercentage = 20,
///                 },
///                 ScaleOutPolicy = new Aws.MskConnect.Inputs.ConnectorCapacityAutoscalingScaleOutPolicyArgs
///                 {
///                     CpuUtilizationPercentage = 80,
///                 },
///             },
///         },
///         ConnectorConfiguration =
///         {
///             { "connector.class", "com.github.jcustenborder.kafka.connect.simulator.SimulatorSinkConnector" },
///             { "tasks.max", "1" },
///             { "topics", "example" },
///         },
///         KafkaCluster = new Aws.MskConnect.Inputs.ConnectorKafkaClusterArgs
///         {
///             ApacheKafkaCluster = new Aws.MskConnect.Inputs.ConnectorKafkaClusterApacheKafkaClusterArgs
///             {
///                 BootstrapServers = exampleAwsMskCluster.BootstrapBrokersTls,
///                 Vpc = new Aws.MskConnect.Inputs.ConnectorKafkaClusterApacheKafkaClusterVpcArgs
///                 {
///                     SecurityGroups = new[]
///                     {
///                         exampleAwsSecurityGroup.Id,
///                     },
///                     Subnets = new[]
///                     {
///                         example1.Id,
///                         example2.Id,
///                         example3.Id,
///                     },
///                 },
///             },
///         },
///         KafkaClusterClientAuthentication = new Aws.MskConnect.Inputs.ConnectorKafkaClusterClientAuthenticationArgs
///         {
///             AuthenticationType = "NONE",
///         },
///         KafkaClusterEncryptionInTransit = new Aws.MskConnect.Inputs.ConnectorKafkaClusterEncryptionInTransitArgs
///         {
///             EncryptionType = "TLS",
///         },
///         Plugins = new[]
///         {
///             new Aws.MskConnect.Inputs.ConnectorPluginArgs
///             {
///                 CustomPlugin = new Aws.MskConnect.Inputs.ConnectorPluginCustomPluginArgs
///                 {
///                     Arn = exampleAwsMskconnectCustomPlugin.Arn,
///                     Revision = exampleAwsMskconnectCustomPlugin.LatestRevision,
///                 },
///             },
///         },
///         ServiceExecutionRoleArn = exampleAwsIamRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mskconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mskconnect.NewConnector(ctx, "example", &mskconnect.ConnectorArgs{
/// 			Name:                pulumi.String("example"),
/// 			KafkaconnectVersion: pulumi.String("2.7.1"),
/// 			Capacity: &mskconnect.ConnectorCapacityArgs{
/// 				Autoscaling: &mskconnect.ConnectorCapacityAutoscalingArgs{
/// 					McuCount:       pulumi.Int(1),
/// 					MinWorkerCount: pulumi.Int(1),
/// 					MaxWorkerCount: pulumi.Int(2),
/// 					ScaleInPolicy: &mskconnect.ConnectorCapacityAutoscalingScaleInPolicyArgs{
/// 						CpuUtilizationPercentage: pulumi.Int(20),
/// 					},
/// 					ScaleOutPolicy: &mskconnect.ConnectorCapacityAutoscalingScaleOutPolicyArgs{
/// 						CpuUtilizationPercentage: pulumi.Int(80),
/// 					},
/// 				},
/// 			},
/// 			ConnectorConfiguration: pulumi.StringMap{
/// 				"connector.class": pulumi.String("com.github.jcustenborder.kafka.connect.simulator.SimulatorSinkConnector"),
/// 				"tasks.max":       pulumi.String("1"),
/// 				"topics":          pulumi.String("example"),
/// 			},
/// 			KafkaCluster: &mskconnect.ConnectorKafkaClusterArgs{
/// 				ApacheKafkaCluster: &mskconnect.ConnectorKafkaClusterApacheKafkaClusterArgs{
/// 					BootstrapServers: pulumi.Any(exampleAwsMskCluster.BootstrapBrokersTls),
/// 					Vpc: &mskconnect.ConnectorKafkaClusterApacheKafkaClusterVpcArgs{
/// 						SecurityGroups: pulumi.StringArray{
/// 							exampleAwsSecurityGroup.Id,
/// 						},
/// 						Subnets: pulumi.StringArray{
/// 							example1.Id,
/// 							example2.Id,
/// 							example3.Id,
/// 						},
/// 					},
/// 				},
/// 			},
/// 			KafkaClusterClientAuthentication: &mskconnect.ConnectorKafkaClusterClientAuthenticationArgs{
/// 				AuthenticationType: pulumi.String("NONE"),
/// 			},
/// 			KafkaClusterEncryptionInTransit: &mskconnect.ConnectorKafkaClusterEncryptionInTransitArgs{
/// 				EncryptionType: pulumi.String("TLS"),
/// 			},
/// 			Plugins: mskconnect.ConnectorPluginArray{
/// 				&mskconnect.ConnectorPluginArgs{
/// 					CustomPlugin: &mskconnect.ConnectorPluginCustomPluginArgs{
/// 						Arn:      pulumi.Any(exampleAwsMskconnectCustomPlugin.Arn),
/// 						Revision: pulumi.Any(exampleAwsMskconnectCustomPlugin.LatestRevision),
/// 					},
/// 				},
/// 			},
/// 			ServiceExecutionRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.mskconnect.Connector;
/// import com.pulumi.aws.mskconnect.ConnectorArgs;
/// import com.pulumi.aws.mskconnect.inputs.ConnectorCapacityArgs;
/// import com.pulumi.aws.mskconnect.inputs.ConnectorCapacityAutoscalingArgs;
/// import com.pulumi.aws.mskconnect.inputs.ConnectorCapacityAutoscalingScaleInPolicyArgs;
/// import com.pulumi.aws.mskconnect.inputs.ConnectorCapacityAutoscalingScaleOutPolicyArgs;
/// import com.pulumi.aws.mskconnect.inputs.ConnectorKafkaClusterArgs;
/// import com.pulumi.aws.mskconnect.inputs.ConnectorKafkaClusterApacheKafkaClusterArgs;
/// import com.pulumi.aws.mskconnect.inputs.ConnectorKafkaClusterApacheKafkaClusterVpcArgs;
/// import com.pulumi.aws.mskconnect.inputs.ConnectorKafkaClusterClientAuthenticationArgs;
/// import com.pulumi.aws.mskconnect.inputs.ConnectorKafkaClusterEncryptionInTransitArgs;
/// import com.pulumi.aws.mskconnect.inputs.ConnectorPluginArgs;
/// import com.pulumi.aws.mskconnect.inputs.ConnectorPluginCustomPluginArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Connector("example", ConnectorArgs.builder()
///             .name("example")
///             .kafkaconnectVersion("2.7.1")
///             .capacity(ConnectorCapacityArgs.builder()
///                 .autoscaling(ConnectorCapacityAutoscalingArgs.builder()
///                     .mcuCount(1)
///                     .minWorkerCount(1)
///                     .maxWorkerCount(2)
///                     .scaleInPolicy(ConnectorCapacityAutoscalingScaleInPolicyArgs.builder()
///                         .cpuUtilizationPercentage(20)
///                         .build())
///                     .scaleOutPolicy(ConnectorCapacityAutoscalingScaleOutPolicyArgs.builder()
///                         .cpuUtilizationPercentage(80)
///                         .build())
///                     .build())
///                 .build())
///             .connectorConfiguration(Map.ofEntries(
///                 Map.entry("connector.class", "com.github.jcustenborder.kafka.connect.simulator.SimulatorSinkConnector"),
///                 Map.entry("tasks.max", "1"),
///                 Map.entry("topics", "example")
///             ))
///             .kafkaCluster(ConnectorKafkaClusterArgs.builder()
///                 .apacheKafkaCluster(ConnectorKafkaClusterApacheKafkaClusterArgs.builder()
///                     .bootstrapServers(exampleAwsMskCluster.bootstrapBrokersTls())
///                     .vpc(ConnectorKafkaClusterApacheKafkaClusterVpcArgs.builder()
///                         .securityGroups(exampleAwsSecurityGroup.id())
///                         .subnets(
///                             example1.id(),
///                             example2.id(),
///                             example3.id())
///                         .build())
///                     .build())
///                 .build())
///             .kafkaClusterClientAuthentication(ConnectorKafkaClusterClientAuthenticationArgs.builder()
///                 .authenticationType("NONE")
///                 .build())
///             .kafkaClusterEncryptionInTransit(ConnectorKafkaClusterEncryptionInTransitArgs.builder()
///                 .encryptionType("TLS")
///                 .build())
///             .plugins(ConnectorPluginArgs.builder()
///                 .customPlugin(ConnectorPluginCustomPluginArgs.builder()
///                     .arn(exampleAwsMskconnectCustomPlugin.arn())
///                     .revision(exampleAwsMskconnectCustomPlugin.latestRevision())
///                     .build())
///                 .build())
///             .serviceExecutionRoleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:mskconnect:Connector
///     properties:
///       name: example
///       kafkaconnectVersion: 2.7.1
///       capacity:
///         autoscaling:
///           mcuCount: 1
///           minWorkerCount: 1
///           maxWorkerCount: 2
///           scaleInPolicy:
///             cpuUtilizationPercentage: 20
///           scaleOutPolicy:
///             cpuUtilizationPercentage: 80
///       connectorConfiguration:
///         connector.class: com.github.jcustenborder.kafka.connect.simulator.SimulatorSinkConnector
///         tasks.max: '1'
///         topics: example
///       kafkaCluster:
///         apacheKafkaCluster:
///           bootstrapServers: ${exampleAwsMskCluster.bootstrapBrokersTls}
///           vpc:
///             securityGroups:
///               - ${exampleAwsSecurityGroup.id}
///             subnets:
///               - ${example1.id}
///               - ${example2.id}
///               - ${example3.id}
///       kafkaClusterClientAuthentication:
///         authenticationType: NONE
///       kafkaClusterEncryptionInTransit:
///         encryptionType: TLS
///       plugins:
///         - customPlugin:
///             arn: ${exampleAwsMskconnectCustomPlugin.arn}
///             revision: ${exampleAwsMskconnectCustomPlugin.latestRevision}
///       serviceExecutionRoleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import MSK Connect Connector using the connector's `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:mskconnect/connector:Connector example 'arn:aws:kafkaconnect:eu-central-1:123456789012:connector/example/264edee4-17a3-412e-bd76-6681cfc93805-3'
/// ```
class Connector extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the connector.
  late final pulumi.Output<String> arn;
  /// Information about the capacity allocated to the connector. See `capacity` Block for details.
  late final pulumi.Output<ConnectorCapacity> capacity;
  /// A map of keys to values that represent the configuration for the connector.
  late final pulumi.Output<Map<String, String>> connectorConfiguration;
  /// A summary description of the connector.
  late final pulumi.Output<String?> description;
  /// Specifies which Apache Kafka cluster to connect to. See `kafka_cluster` Block for details.
  late final pulumi.Output<ConnectorKafkaCluster> kafkaCluster;
  /// Details of the client authentication used by the Apache Kafka cluster. See `kafka_cluster_client_authentication` Block for details.
  late final pulumi.Output<ConnectorKafkaClusterClientAuthentication> kafkaClusterClientAuthentication;
  /// Details of encryption in transit to the Apache Kafka cluster. See `kafka_cluster_encryption_in_transit` Block for details.
  late final pulumi.Output<ConnectorKafkaClusterEncryptionInTransit> kafkaClusterEncryptionInTransit;
  /// The version of Kafka Connect. It has to be compatible with both the Apache Kafka cluster's version and the plugins.
  late final pulumi.Output<String> kafkaconnectVersion;
  /// Details about log delivery. See `log_delivery` Block for details.
  late final pulumi.Output<ConnectorLogDelivery?> logDelivery;
  /// The name of the connector.
  late final pulumi.Output<String> name;
  /// Specifies which plugins to use for the connector. See `plugin` Block for details.
  late final pulumi.Output<List<ConnectorPlugin>> plugins;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The Amazon Resource Name (ARN) of the IAM role used by the connector to access the Amazon Web Services resources that it needs. The types of resources depends on the logic of the connector. For example, a connector that has Amazon S3 as a destination must have permissions that allow it to write to the S3 destination bucket.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> serviceExecutionRoleArn;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The current version of the connector.
  late final pulumi.Output<String> version;
  /// Specifies which worker configuration to use with the connector. See `worker_configuration` Block for details.
  late final pulumi.Output<ConnectorWorkerConfiguration?> workerConfiguration;

  /// Creates a new [Connector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connector]. {@macro pulumi_mskconnect_connector_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connector(
    String name, {
    ConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mskconnect/connector:Connector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.capacity = registerOutput<ConnectorCapacity>('capacity');
    this.connectorConfiguration = registerOutput<Map<String, String>>('connectorConfiguration');
    this.description = registerOutput<String?>('description');
    this.kafkaCluster = registerOutput<ConnectorKafkaCluster>('kafkaCluster');
    this.kafkaClusterClientAuthentication = registerOutput<ConnectorKafkaClusterClientAuthentication>('kafkaClusterClientAuthentication');
    this.kafkaClusterEncryptionInTransit = registerOutput<ConnectorKafkaClusterEncryptionInTransit>('kafkaClusterEncryptionInTransit');
    this.kafkaconnectVersion = registerOutput<String>('kafkaconnectVersion');
    this.logDelivery = registerOutput<ConnectorLogDelivery?>('logDelivery');
    this.name = registerOutput<String>('name');
    this.plugins = registerOutput<List<ConnectorPlugin>>('plugins');
    this.region = registerOutput<String>('region');
    this.serviceExecutionRoleArn = registerOutput<String>('serviceExecutionRoleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.version = registerOutput<String>('version');
    this.workerConfiguration = registerOutput<ConnectorWorkerConfiguration?>('workerConfiguration');
  }
}
