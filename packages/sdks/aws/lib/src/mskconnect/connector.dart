import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_args.dart';
import 'connector_capacity.dart';
import 'connector_kafka_cluster.dart';
import 'connector_kafka_cluster_client_authentication.dart';
import 'connector_kafka_cluster_encryption_in_transit.dart';
import 'connector_log_delivery.dart';
import 'connector_plugin.dart';
import 'connector_state.dart';
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
///     capacity: {
///         autoscaling: {
///             scaleInPolicy: {
///                 cpuUtilizationPercentage: 20,
///             },
///             scaleOutPolicy: {
///                 cpuUtilizationPercentage: 80,
///             },
///             mcuCount: 1,
///             minWorkerCount: 1,
///             maxWorkerCount: 2,
///         },
///     },
///     kafkaCluster: {
///         apacheKafkaCluster: {
///             vpc: {
///                 securityGroups: [exampleAwsSecurityGroup.id],
///                 subnets: [
///                     example1.id,
///                     example2.id,
///                     example3.id,
///                 ],
///             },
///             bootstrapServers: exampleAwsMskCluster.bootstrapBrokersTls,
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
///             revision: Number(exampleAwsMskconnectCustomPlugin.latestRevision),
///         },
///     }],
///     name: "example",
///     kafkaconnectVersion: "2.7.1",
///     connectorConfiguration: {
///         "connector.class": "com.github.jcustenborder.kafka.connect.simulator.SimulatorSinkConnector",
///         "tasks.max": "1",
///         topics: "example",
///     },
///     serviceExecutionRoleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.mskconnect.Connector("example",
///     capacity={
///         "autoscaling": {
///             "scale_in_policy": {
///                 "cpu_utilization_percentage": 20,
///             },
///             "scale_out_policy": {
///                 "cpu_utilization_percentage": 80,
///             },
///             "mcu_count": 1,
///             "min_worker_count": 1,
///             "max_worker_count": 2,
///         },
///     },
///     kafka_cluster={
///         "apache_kafka_cluster": {
///             "vpc": {
///                 "security_groups": [example_aws_security_group["id"]],
///                 "subnets": [
///                     example1["id"],
///                     example2["id"],
///                     example3["id"],
///                 ],
///             },
///             "bootstrap_servers": example_aws_msk_cluster["bootstrapBrokersTls"],
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
///             "revision": int(example_aws_mskconnect_custom_plugin["latestRevision"]),
///         },
///     }],
///     name="example",
///     kafkaconnect_version="2.7.1",
///     connector_configuration={
///         "connector.class": "com.github.jcustenborder.kafka.connect.simulator.SimulatorSinkConnector",
///         "tasks.max": "1",
///         "topics": "example",
///     },
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
///         Capacity = new Aws.MskConnect.Inputs.ConnectorCapacityArgs
///         {
///             Autoscaling = new Aws.MskConnect.Inputs.ConnectorCapacityAutoscalingArgs
///             {
///                 ScaleInPolicy = new Aws.MskConnect.Inputs.ConnectorCapacityAutoscalingScaleInPolicyArgs
///                 {
///                     CpuUtilizationPercentage = 20,
///                 },
///                 ScaleOutPolicy = new Aws.MskConnect.Inputs.ConnectorCapacityAutoscalingScaleOutPolicyArgs
///                 {
///                     CpuUtilizationPercentage = 80,
///                 },
///                 McuCount = 1,
///                 MinWorkerCount = 1,
///                 MaxWorkerCount = 2,
///             },
///         },
///         KafkaCluster = new Aws.MskConnect.Inputs.ConnectorKafkaClusterArgs
///         {
///             ApacheKafkaCluster = new Aws.MskConnect.Inputs.ConnectorKafkaClusterApacheKafkaClusterArgs
///             {
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
///                 BootstrapServers = exampleAwsMskCluster.BootstrapBrokersTls,
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
///         Name = "example",
///         KafkaconnectVersion = "2.7.1",
///         ConnectorConfiguration =
///         {
///             { "connector.class", "com.github.jcustenborder.kafka.connect.simulator.SimulatorSinkConnector" },
///             { "tasks.max", "1" },
///             { "topics", "example" },
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
/// 			Capacity: &mskconnect.ConnectorCapacityArgs{
/// 				Autoscaling: &mskconnect.ConnectorCapacityAutoscalingArgs{
/// 					ScaleInPolicy: &mskconnect.ConnectorCapacityAutoscalingScaleInPolicyArgs{
/// 						CpuUtilizationPercentage: pulumi.Int(20),
/// 					},
/// 					ScaleOutPolicy: &mskconnect.ConnectorCapacityAutoscalingScaleOutPolicyArgs{
/// 						CpuUtilizationPercentage: pulumi.Int(80),
/// 					},
/// 					McuCount:       pulumi.Int(1),
/// 					MinWorkerCount: pulumi.Int(1),
/// 					MaxWorkerCount: pulumi.Int(2),
/// 				},
/// 			},
/// 			KafkaCluster: &mskconnect.ConnectorKafkaClusterArgs{
/// 				ApacheKafkaCluster: &mskconnect.ConnectorKafkaClusterApacheKafkaClusterArgs{
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
/// 					BootstrapServers: pulumi.Any(exampleAwsMskCluster.BootstrapBrokersTls),
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
/// 			Name:                pulumi.String("example"),
/// 			KafkaconnectVersion: pulumi.String("2.7.1"),
/// 			ConnectorConfiguration: pulumi.StringMap{
/// 				"connector.class": pulumi.String("com.github.jcustenborder.kafka.connect.simulator.SimulatorSinkConnector"),
/// 				"tasks.max":       pulumi.String("1"),
/// 				"topics":          pulumi.String("example"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_mskconnect_connector" "example" {
///   capacity = {
///     autoscaling = {
///       scale_in_policy = {
///         cpu_utilization_percentage = 20
///       }
///       scale_out_policy = {
///         cpu_utilization_percentage = 80
///       }
///       mcu_count        = 1
///       min_worker_count = 1
///       max_worker_count = 2
///     }
///   }
///   kafka_cluster = {
///     apache_kafka_cluster = {
///       vpc = {
///         security_groups = [exampleAwsSecurityGroup.id]
///         subnets         = [example1.id, example2.id, example3.id]
///       }
///       bootstrap_servers = exampleAwsMskCluster.bootstrapBrokersTls
///     }
///   }
///   kafka_cluster_client_authentication = {
///     authentication_type = "NONE"
///   }
///   kafka_cluster_encryption_in_transit = {
///     encryption_type = "TLS"
///   }
///   plugins {
///     custom_plugin = {
///       arn      = exampleAwsMskconnectCustomPlugin.arn
///       revision = exampleAwsMskconnectCustomPlugin.latestRevision
///     }
///   }
///   name                 = "example"
///   kafkaconnect_version = "2.7.1"
///   connector_configuration = {
///     "connector.class" = "com.github.jcustenborder.kafka.connect.simulator.SimulatorSinkConnector"
///     "tasks.max"       = "1"
///     "topics"          = "example"
///   }
///   service_execution_role_arn = exampleAwsIamRole.arn
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .capacity(ConnectorCapacityArgs.builder()
///                 .autoscaling(ConnectorCapacityAutoscalingArgs.builder()
///                     .scaleInPolicy(ConnectorCapacityAutoscalingScaleInPolicyArgs.builder()
///                         .cpuUtilizationPercentage(20)
///                         .build())
///                     .scaleOutPolicy(ConnectorCapacityAutoscalingScaleOutPolicyArgs.builder()
///                         .cpuUtilizationPercentage(80)
///                         .build())
///                     .mcuCount(1)
///                     .minWorkerCount(1)
///                     .maxWorkerCount(2)
///                     .build())
///                 .build())
///             .kafkaCluster(ConnectorKafkaClusterArgs.builder()
///                 .apacheKafkaCluster(ConnectorKafkaClusterApacheKafkaClusterArgs.builder()
///                     .vpc(ConnectorKafkaClusterApacheKafkaClusterVpcArgs.builder()
///                         .securityGroups(exampleAwsSecurityGroup.id())
///                         .subnets(
///                             example1.id(),
///                             example2.id(),
///                             example3.id())
///                         .build())
///                     .bootstrapServers(exampleAwsMskCluster.bootstrapBrokersTls())
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
///             .name("example")
///             .kafkaconnectVersion("2.7.1")
///             .connectorConfiguration(Map.ofEntries(
///                 Map.entry("connector.class", "com.github.jcustenborder.kafka.connect.simulator.SimulatorSinkConnector"),
///                 Map.entry("tasks.max", "1"),
///                 Map.entry("topics", "example")
///             ))
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
///       capacity:
///         autoscaling:
///           scaleInPolicy:
///             cpuUtilizationPercentage: 20
///           scaleOutPolicy:
///             cpuUtilizationPercentage: 80
///           mcuCount: 1
///           minWorkerCount: 1
///           maxWorkerCount: 2
///       kafkaCluster:
///         apacheKafkaCluster:
///           vpc:
///             securityGroups:
///               - ${exampleAwsSecurityGroup.id}
///             subnets:
///               - ${example1.id}
///               - ${example2.id}
///               - ${example3.id}
///           bootstrapServers: ${exampleAwsMskCluster.bootstrapBrokersTls}
///       kafkaClusterClientAuthentication:
///         authenticationType: NONE
///       kafkaClusterEncryptionInTransit:
///         encryptionType: TLS
///       plugins:
///         - customPlugin:
///             arn: ${exampleAwsMskconnectCustomPlugin.arn}
///             revision: ${exampleAwsMskconnectCustomPlugin.latestRevision}
///       name: example
///       kafkaconnectVersion: 2.7.1
///       connectorConfiguration:
///         connector.class: com.github.jcustenborder.kafka.connect.simulator.SimulatorSinkConnector
///         tasks.max: '1'
///         topics: example
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
  /// ARN of the connector.
  late final pulumi.Output<String> arn;
  /// Information about the capacity allocated to the connector. See `capacity` Block for details.
  late final pulumi.Output<ConnectorCapacity> capacity;
  /// A map of keys to values that represent the configuration for the connector.
  late final pulumi.Output<Map<String, String>> connectorConfiguration;
  /// A summary description of the connector.
  late final pulumi.Output<String?> description;
  /// Specifies which Apache Kafka cluster to connect to. See `kafkaCluster` Block for details.
  late final pulumi.Output<ConnectorKafkaCluster> kafkaCluster;
  /// Details of the client authentication used by the Apache Kafka cluster. See `kafkaClusterClientAuthentication` Block for details.
  late final pulumi.Output<ConnectorKafkaClusterClientAuthentication> kafkaClusterClientAuthentication;
  /// Details of encryption in transit to the Apache Kafka cluster. See `kafkaClusterEncryptionInTransit` Block for details.
  late final pulumi.Output<ConnectorKafkaClusterEncryptionInTransit> kafkaClusterEncryptionInTransit;
  /// The version of Kafka Connect. It has to be compatible with both the Apache Kafka cluster's version and the plugins.
  late final pulumi.Output<String> kafkaconnectVersion;
  /// Details about log delivery. See `logDelivery` Block for details.
  late final pulumi.Output<ConnectorLogDelivery?> logDelivery;
  /// The name of the connector.
  late final pulumi.Output<String> name;
  /// Specifies which plugins to use for the connector. See `plugin` Block for details.
  late final pulumi.Output<List<ConnectorPlugin>> plugins;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the IAM role used by the connector to access the Amazon Web Services resources that it needs. The types of resources depends on the logic of the connector. For example, a connector that has Amazon S3 as a destination must have permissions that allow it to write to the S3 destination bucket.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> serviceExecutionRoleArn;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The current version of the connector.
  late final pulumi.Output<String> version;
  /// Specifies which worker configuration to use with the connector. See `workerConfiguration` Block for details.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    capacity = registerOutput<ConnectorCapacity>('capacity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorCapacity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    connectorConfiguration = registerOutput<Map<String, String>>('connectorConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    description = registerOutput<String?>('description');
    kafkaCluster = registerOutput<ConnectorKafkaCluster>('kafkaCluster', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorKafkaCluster.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kafkaClusterClientAuthentication = registerOutput<ConnectorKafkaClusterClientAuthentication>('kafkaClusterClientAuthentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorKafkaClusterClientAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kafkaClusterEncryptionInTransit = registerOutput<ConnectorKafkaClusterEncryptionInTransit>('kafkaClusterEncryptionInTransit', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorKafkaClusterEncryptionInTransit.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kafkaconnectVersion = registerOutput<String>('kafkaconnectVersion');
    logDelivery = registerOutput<ConnectorLogDelivery?>('logDelivery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorLogDelivery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    plugins = registerOutput<List<ConnectorPlugin>>('plugins', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConnectorPlugin>(guardedValue, (value) => ConnectorPlugin.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    serviceExecutionRoleArn = registerOutput<String>('serviceExecutionRoleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    version = registerOutput<String>('version');
    workerConfiguration = registerOutput<ConnectorWorkerConfiguration?>('workerConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorWorkerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Connector] resource's state with the given [name] and [id].
  static Connector get(
    String name,
    pulumi.Input<String> id, {
    ConnectorState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Connector._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Connector._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mskconnect/connector:Connector',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    capacity = registerOutput<ConnectorCapacity>('capacity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorCapacity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    connectorConfiguration = registerOutput<Map<String, String>>('connectorConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    description = registerOutput<String?>('description');
    kafkaCluster = registerOutput<ConnectorKafkaCluster>('kafkaCluster', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorKafkaCluster.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kafkaClusterClientAuthentication = registerOutput<ConnectorKafkaClusterClientAuthentication>('kafkaClusterClientAuthentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorKafkaClusterClientAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kafkaClusterEncryptionInTransit = registerOutput<ConnectorKafkaClusterEncryptionInTransit>('kafkaClusterEncryptionInTransit', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorKafkaClusterEncryptionInTransit.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kafkaconnectVersion = registerOutput<String>('kafkaconnectVersion');
    logDelivery = registerOutput<ConnectorLogDelivery?>('logDelivery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorLogDelivery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    plugins = registerOutput<List<ConnectorPlugin>>('plugins', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConnectorPlugin>(guardedValue, (value) => ConnectorPlugin.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    serviceExecutionRoleArn = registerOutput<String>('serviceExecutionRoleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    version = registerOutput<String>('version');
    workerConfiguration = registerOutput<ConnectorWorkerConfiguration?>('workerConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorWorkerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Connector] resource.
  Connector.reference(String urn)
    : super(
        'aws:mskconnect/connector:Connector',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    capacity = registerOutput<ConnectorCapacity>('capacity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorCapacity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    connectorConfiguration = registerOutput<Map<String, String>>('connectorConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    description = registerOutput<String?>('description');
    kafkaCluster = registerOutput<ConnectorKafkaCluster>('kafkaCluster', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorKafkaCluster.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kafkaClusterClientAuthentication = registerOutput<ConnectorKafkaClusterClientAuthentication>('kafkaClusterClientAuthentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorKafkaClusterClientAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kafkaClusterEncryptionInTransit = registerOutput<ConnectorKafkaClusterEncryptionInTransit>('kafkaClusterEncryptionInTransit', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorKafkaClusterEncryptionInTransit.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kafkaconnectVersion = registerOutput<String>('kafkaconnectVersion');
    logDelivery = registerOutput<ConnectorLogDelivery?>('logDelivery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorLogDelivery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    plugins = registerOutput<List<ConnectorPlugin>>('plugins', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConnectorPlugin>(guardedValue, (value) => ConnectorPlugin.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    serviceExecutionRoleArn = registerOutput<String>('serviceExecutionRoleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    version = registerOutput<String>('version');
    workerConfiguration = registerOutput<ConnectorWorkerConfiguration?>('workerConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorWorkerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
