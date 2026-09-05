import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_configuration_args.dart';
import 'logging_configuration_logging_configuration.dart';
import 'logging_configuration_state.dart';

/// Provides an AWS Network Firewall Logging Configuration Resource
///
/// ## Example Usage
///
/// ### Logging to S3
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkfirewall.LoggingConfiguration("example", {
///     loggingConfiguration: {
///         logDestinationConfigs: [{
///             logDestination: {
///                 bucketName: exampleAwsS3Bucket.bucket,
///                 prefix: "example",
///             },
///             logDestinationType: "S3",
///             logType: "FLOW",
///         }],
///     },
///     firewallArn: exampleAwsNetworkfirewallFirewall.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.LoggingConfiguration("example",
///     logging_configuration={
///         "log_destination_configs": [{
///             "log_destination": {
///                 "bucketName": example_aws_s3_bucket["bucket"],
///                 "prefix": "example",
///             },
///             "log_destination_type": "S3",
///             "log_type": "FLOW",
///         }],
///     },
///     firewall_arn=example_aws_networkfirewall_firewall["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkFirewall.LoggingConfiguration("example", new()
///     {
///         LoggingConfig = new Aws.NetworkFirewall.Inputs.LoggingConfigurationLoggingConfigurationArgs
///         {
///             LogDestinationConfigs = new[]
///             {
///                 new Aws.NetworkFirewall.Inputs.LoggingConfigurationLoggingConfigurationLogDestinationConfigArgs
///                 {
///                     LogDestination =
///                     {
///                         { "bucketName", exampleAwsS3Bucket.Bucket },
///                         { "prefix", "example" },
///                     },
///                     LogDestinationType = "S3",
///                     LogType = "FLOW",
///                 },
///             },
///         },
///         FirewallArn = exampleAwsNetworkfirewallFirewall.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkfirewall.NewLoggingConfiguration(ctx, "example", &networkfirewall.LoggingConfigurationArgs{
/// 			LoggingConfiguration: &networkfirewall.LoggingConfigurationLoggingConfigurationArgs{
/// 				LogDestinationConfigs: networkfirewall.LoggingConfigurationLoggingConfigurationLogDestinationConfigArray{
/// 					&networkfirewall.LoggingConfigurationLoggingConfigurationLogDestinationConfigArgs{
/// 						LogDestination: pulumi.StringMap{
/// 							"bucketName": pulumi.Any(exampleAwsS3Bucket.Bucket),
/// 							"prefix":     pulumi.String("example"),
/// 						},
/// 						LogDestinationType: pulumi.String("S3"),
/// 						LogType:            pulumi.String("FLOW"),
/// 					},
/// 				},
/// 			},
/// 			FirewallArn: pulumi.Any(exampleAwsNetworkfirewallFirewall.Arn),
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
/// resource "aws_networkfirewall_loggingconfiguration" "example" {
///   logging_configuration = {
///     log_destination_configs = [{
///       "logDestination" = {
///         "bucketName" = exampleAwsS3Bucket.bucket
///         "prefix"     = "example"
///       }
///       "logDestinationType" = "S3"
///       "logType"            = "FLOW"
///     }]
///   }
///   firewall_arn = exampleAwsNetworkfirewallFirewall.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkfirewall.LoggingConfiguration;
/// import com.pulumi.aws.networkfirewall.LoggingConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.LoggingConfigurationLoggingConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.LoggingConfigurationLoggingConfigurationLogDestinationConfigArgs;
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
///         var example = new LoggingConfiguration("example", LoggingConfigurationArgs.builder()
///             .loggingConfiguration(LoggingConfigurationLoggingConfigurationArgs.builder()
///                 .logDestinationConfigs(LoggingConfigurationLoggingConfigurationLogDestinationConfigArgs.builder()
///                     .logDestination(Map.ofEntries(
///                         Map.entry("bucketName", exampleAwsS3Bucket.bucket()),
///                         Map.entry("prefix", "example")
///                     ))
///                     .logDestinationType("S3")
///                     .logType("FLOW")
///                     .build())
///                 .build())
///             .firewallArn(exampleAwsNetworkfirewallFirewall.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkfirewall:LoggingConfiguration
///     properties:
///       loggingConfiguration:
///         logDestinationConfigs:
///           - logDestination:
///               bucketName: ${exampleAwsS3Bucket.bucket}
///               prefix: example
///             logDestinationType: S3
///             logType: FLOW
///       firewallArn: ${exampleAwsNetworkfirewallFirewall.arn}
/// ```
///
///
/// ### Logging to CloudWatch
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkfirewall.LoggingConfiguration("example", {
///     loggingConfiguration: {
///         logDestinationConfigs: [{
///             logDestination: {
///                 logGroup: exampleAwsCloudwatchLogGroup.name,
///             },
///             logDestinationType: "CloudWatchLogs",
///             logType: "ALERT",
///         }],
///     },
///     firewallArn: exampleAwsNetworkfirewallFirewall.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.LoggingConfiguration("example",
///     logging_configuration={
///         "log_destination_configs": [{
///             "log_destination": {
///                 "logGroup": example_aws_cloudwatch_log_group["name"],
///             },
///             "log_destination_type": "CloudWatchLogs",
///             "log_type": "ALERT",
///         }],
///     },
///     firewall_arn=example_aws_networkfirewall_firewall["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkFirewall.LoggingConfiguration("example", new()
///     {
///         LoggingConfig = new Aws.NetworkFirewall.Inputs.LoggingConfigurationLoggingConfigurationArgs
///         {
///             LogDestinationConfigs = new[]
///             {
///                 new Aws.NetworkFirewall.Inputs.LoggingConfigurationLoggingConfigurationLogDestinationConfigArgs
///                 {
///                     LogDestination =
///                     {
///                         { "logGroup", exampleAwsCloudwatchLogGroup.Name },
///                     },
///                     LogDestinationType = "CloudWatchLogs",
///                     LogType = "ALERT",
///                 },
///             },
///         },
///         FirewallArn = exampleAwsNetworkfirewallFirewall.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkfirewall.NewLoggingConfiguration(ctx, "example", &networkfirewall.LoggingConfigurationArgs{
/// 			LoggingConfiguration: &networkfirewall.LoggingConfigurationLoggingConfigurationArgs{
/// 				LogDestinationConfigs: networkfirewall.LoggingConfigurationLoggingConfigurationLogDestinationConfigArray{
/// 					&networkfirewall.LoggingConfigurationLoggingConfigurationLogDestinationConfigArgs{
/// 						LogDestination: pulumi.StringMap{
/// 							"logGroup": pulumi.Any(exampleAwsCloudwatchLogGroup.Name),
/// 						},
/// 						LogDestinationType: pulumi.String("CloudWatchLogs"),
/// 						LogType:            pulumi.String("ALERT"),
/// 					},
/// 				},
/// 			},
/// 			FirewallArn: pulumi.Any(exampleAwsNetworkfirewallFirewall.Arn),
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
/// resource "aws_networkfirewall_loggingconfiguration" "example" {
///   logging_configuration = {
///     log_destination_configs = [{
///       "logDestination" = {
///         "logGroup" = exampleAwsCloudwatchLogGroup.name
///       }
///       "logDestinationType" = "CloudWatchLogs"
///       "logType"            = "ALERT"
///     }]
///   }
///   firewall_arn = exampleAwsNetworkfirewallFirewall.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkfirewall.LoggingConfiguration;
/// import com.pulumi.aws.networkfirewall.LoggingConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.LoggingConfigurationLoggingConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.LoggingConfigurationLoggingConfigurationLogDestinationConfigArgs;
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
///         var example = new LoggingConfiguration("example", LoggingConfigurationArgs.builder()
///             .loggingConfiguration(LoggingConfigurationLoggingConfigurationArgs.builder()
///                 .logDestinationConfigs(LoggingConfigurationLoggingConfigurationLogDestinationConfigArgs.builder()
///                     .logDestination(Map.of("logGroup", exampleAwsCloudwatchLogGroup.name()))
///                     .logDestinationType("CloudWatchLogs")
///                     .logType("ALERT")
///                     .build())
///                 .build())
///             .firewallArn(exampleAwsNetworkfirewallFirewall.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkfirewall:LoggingConfiguration
///     properties:
///       loggingConfiguration:
///         logDestinationConfigs:
///           - logDestination:
///               logGroup: ${exampleAwsCloudwatchLogGroup.name}
///             logDestinationType: CloudWatchLogs
///             logType: ALERT
///       firewallArn: ${exampleAwsNetworkfirewallFirewall.arn}
/// ```
///
///
/// ### Logging to Kinesis Data Firehose
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkfirewall.LoggingConfiguration("example", {
///     loggingConfiguration: {
///         logDestinationConfigs: [{
///             logDestination: {
///                 deliveryStream: exampleAwsKinesisFirehoseDeliveryStream.name,
///             },
///             logDestinationType: "KinesisDataFirehose",
///             logType: "TLS",
///         }],
///     },
///     firewallArn: exampleAwsNetworkfirewallFirewall.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.LoggingConfiguration("example",
///     logging_configuration={
///         "log_destination_configs": [{
///             "log_destination": {
///                 "deliveryStream": example_aws_kinesis_firehose_delivery_stream["name"],
///             },
///             "log_destination_type": "KinesisDataFirehose",
///             "log_type": "TLS",
///         }],
///     },
///     firewall_arn=example_aws_networkfirewall_firewall["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkFirewall.LoggingConfiguration("example", new()
///     {
///         LoggingConfig = new Aws.NetworkFirewall.Inputs.LoggingConfigurationLoggingConfigurationArgs
///         {
///             LogDestinationConfigs = new[]
///             {
///                 new Aws.NetworkFirewall.Inputs.LoggingConfigurationLoggingConfigurationLogDestinationConfigArgs
///                 {
///                     LogDestination =
///                     {
///                         { "deliveryStream", exampleAwsKinesisFirehoseDeliveryStream.Name },
///                     },
///                     LogDestinationType = "KinesisDataFirehose",
///                     LogType = "TLS",
///                 },
///             },
///         },
///         FirewallArn = exampleAwsNetworkfirewallFirewall.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkfirewall.NewLoggingConfiguration(ctx, "example", &networkfirewall.LoggingConfigurationArgs{
/// 			LoggingConfiguration: &networkfirewall.LoggingConfigurationLoggingConfigurationArgs{
/// 				LogDestinationConfigs: networkfirewall.LoggingConfigurationLoggingConfigurationLogDestinationConfigArray{
/// 					&networkfirewall.LoggingConfigurationLoggingConfigurationLogDestinationConfigArgs{
/// 						LogDestination: pulumi.StringMap{
/// 							"deliveryStream": pulumi.Any(exampleAwsKinesisFirehoseDeliveryStream.Name),
/// 						},
/// 						LogDestinationType: pulumi.String("KinesisDataFirehose"),
/// 						LogType:            pulumi.String("TLS"),
/// 					},
/// 				},
/// 			},
/// 			FirewallArn: pulumi.Any(exampleAwsNetworkfirewallFirewall.Arn),
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
/// resource "aws_networkfirewall_loggingconfiguration" "example" {
///   logging_configuration = {
///     log_destination_configs = [{
///       "logDestination" = {
///         "deliveryStream" = exampleAwsKinesisFirehoseDeliveryStream.name
///       }
///       "logDestinationType" = "KinesisDataFirehose"
///       "logType"            = "TLS"
///     }]
///   }
///   firewall_arn = exampleAwsNetworkfirewallFirewall.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkfirewall.LoggingConfiguration;
/// import com.pulumi.aws.networkfirewall.LoggingConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.LoggingConfigurationLoggingConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.LoggingConfigurationLoggingConfigurationLogDestinationConfigArgs;
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
///         var example = new LoggingConfiguration("example", LoggingConfigurationArgs.builder()
///             .loggingConfiguration(LoggingConfigurationLoggingConfigurationArgs.builder()
///                 .logDestinationConfigs(LoggingConfigurationLoggingConfigurationLogDestinationConfigArgs.builder()
///                     .logDestination(Map.of("deliveryStream", exampleAwsKinesisFirehoseDeliveryStream.name()))
///                     .logDestinationType("KinesisDataFirehose")
///                     .logType("TLS")
///                     .build())
///                 .build())
///             .firewallArn(exampleAwsNetworkfirewallFirewall.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkfirewall:LoggingConfiguration
///     properties:
///       loggingConfiguration:
///         logDestinationConfigs:
///           - logDestination:
///               deliveryStream: ${exampleAwsKinesisFirehoseDeliveryStream.name}
///             logDestinationType: KinesisDataFirehose
///             logType: TLS
///       firewallArn: ${exampleAwsNetworkfirewallFirewall.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Network Firewall Logging Configurations using the `firewallArn`. For example:
///
/// ```sh
/// $ pulumi import aws:networkfirewall/loggingConfiguration:LoggingConfiguration example arn:aws:network-firewall:us-west-1:123456789012:firewall/example
/// ```
class LoggingConfiguration extends pulumi.CustomResource {
  /// Whether to enable the detailed firewall monitoring dashboard on the firewall. Defaults to `false`.
  late final pulumi.Output<bool> enableMonitoringDashboard;
  /// ARN of the Network Firewall firewall.
  late final pulumi.Output<String> firewallArn;
  /// A configuration block describing how AWS Network Firewall performs logging for a firewall. See Logging Configuration below for details.
  late final pulumi.Output<LoggingConfigurationLoggingConfiguration> loggingConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [LoggingConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoggingConfiguration]. {@macro pulumi_networkfirewall_logging_configuration_logging_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoggingConfiguration(
    String name, {
    LoggingConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkfirewall/loggingConfiguration:LoggingConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    enableMonitoringDashboard = registerOutput<bool>('enableMonitoringDashboard');
    firewallArn = registerOutput<String>('firewallArn');
    loggingConfiguration = registerOutput<LoggingConfigurationLoggingConfiguration>('loggingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoggingConfigurationLoggingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
  }

  /// Gets an existing [LoggingConfiguration] resource's state with the given [name] and [id].
  static LoggingConfiguration get(
    String name,
    pulumi.Input<String> id, {
    LoggingConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LoggingConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LoggingConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkfirewall/loggingConfiguration:LoggingConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enableMonitoringDashboard = registerOutput<bool>('enableMonitoringDashboard');
    firewallArn = registerOutput<String>('firewallArn');
    loggingConfiguration = registerOutput<LoggingConfigurationLoggingConfiguration>('loggingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoggingConfigurationLoggingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [LoggingConfiguration] resource.
  LoggingConfiguration.reference(String urn)
    : super(
        'aws:networkfirewall/loggingConfiguration:LoggingConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    enableMonitoringDashboard = registerOutput<bool>('enableMonitoringDashboard');
    firewallArn = registerOutput<String>('firewallArn');
    loggingConfiguration = registerOutput<LoggingConfigurationLoggingConfiguration>('loggingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoggingConfigurationLoggingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
  }
}
