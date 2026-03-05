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
///     firewallArn: exampleAwsNetworkfirewallFirewall.arn,
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
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.LoggingConfiguration("example",
///     firewall_arn=example_aws_networkfirewall_firewall["arn"],
///     logging_configuration={
///         "log_destination_configs": [{
///             "log_destination": {
///                 "bucketName": example_aws_s3_bucket["bucket"],
///                 "prefix": "example",
///             },
///             "log_destination_type": "S3",
///             "log_type": "FLOW",
///         }],
///     })
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
///         FirewallArn = exampleAwsNetworkfirewallFirewall.Arn,
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
/// 			FirewallArn: pulumi.Any(exampleAwsNetworkfirewallFirewall.Arn),
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
/// import com.pulumi.aws.networkfirewall.LoggingConfiguration;
/// import com.pulumi.aws.networkfirewall.LoggingConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.LoggingConfigurationLoggingConfigurationArgs;
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
///         var example = new LoggingConfiguration("example", LoggingConfigurationArgs.builder()
///             .firewallArn(exampleAwsNetworkfirewallFirewall.arn())
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
///       firewallArn: ${exampleAwsNetworkfirewallFirewall.arn}
///       loggingConfiguration:
///         logDestinationConfigs:
///           - logDestination:
///               bucketName: ${exampleAwsS3Bucket.bucket}
///               prefix: example
///             logDestinationType: S3
///             logType: FLOW
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
///     firewallArn: exampleAwsNetworkfirewallFirewall.arn,
///     loggingConfiguration: {
///         logDestinationConfigs: [{
///             logDestination: {
///                 logGroup: exampleAwsCloudwatchLogGroup.name,
///             },
///             logDestinationType: "CloudWatchLogs",
///             logType: "ALERT",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.LoggingConfiguration("example",
///     firewall_arn=example_aws_networkfirewall_firewall["arn"],
///     logging_configuration={
///         "log_destination_configs": [{
///             "log_destination": {
///                 "logGroup": example_aws_cloudwatch_log_group["name"],
///             },
///             "log_destination_type": "CloudWatchLogs",
///             "log_type": "ALERT",
///         }],
///     })
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
///         FirewallArn = exampleAwsNetworkfirewallFirewall.Arn,
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
/// 			FirewallArn: pulumi.Any(exampleAwsNetworkfirewallFirewall.Arn),
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
/// import com.pulumi.aws.networkfirewall.LoggingConfiguration;
/// import com.pulumi.aws.networkfirewall.LoggingConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.LoggingConfigurationLoggingConfigurationArgs;
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
///         var example = new LoggingConfiguration("example", LoggingConfigurationArgs.builder()
///             .firewallArn(exampleAwsNetworkfirewallFirewall.arn())
///             .loggingConfiguration(LoggingConfigurationLoggingConfigurationArgs.builder()
///                 .logDestinationConfigs(LoggingConfigurationLoggingConfigurationLogDestinationConfigArgs.builder()
///                     .logDestination(Map.of("logGroup", exampleAwsCloudwatchLogGroup.name()))
///                     .logDestinationType("CloudWatchLogs")
///                     .logType("ALERT")
///                     .build())
///                 .build())
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
///       firewallArn: ${exampleAwsNetworkfirewallFirewall.arn}
///       loggingConfiguration:
///         logDestinationConfigs:
///           - logDestination:
///               logGroup: ${exampleAwsCloudwatchLogGroup.name}
///             logDestinationType: CloudWatchLogs
///             logType: ALERT
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
///     firewallArn: exampleAwsNetworkfirewallFirewall.arn,
///     loggingConfiguration: {
///         logDestinationConfigs: [{
///             logDestination: {
///                 deliveryStream: exampleAwsKinesisFirehoseDeliveryStream.name,
///             },
///             logDestinationType: "KinesisDataFirehose",
///             logType: "TLS",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.LoggingConfiguration("example",
///     firewall_arn=example_aws_networkfirewall_firewall["arn"],
///     logging_configuration={
///         "log_destination_configs": [{
///             "log_destination": {
///                 "deliveryStream": example_aws_kinesis_firehose_delivery_stream["name"],
///             },
///             "log_destination_type": "KinesisDataFirehose",
///             "log_type": "TLS",
///         }],
///     })
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
///         FirewallArn = exampleAwsNetworkfirewallFirewall.Arn,
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
/// 			FirewallArn: pulumi.Any(exampleAwsNetworkfirewallFirewall.Arn),
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
/// import com.pulumi.aws.networkfirewall.LoggingConfiguration;
/// import com.pulumi.aws.networkfirewall.LoggingConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.LoggingConfigurationLoggingConfigurationArgs;
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
///         var example = new LoggingConfiguration("example", LoggingConfigurationArgs.builder()
///             .firewallArn(exampleAwsNetworkfirewallFirewall.arn())
///             .loggingConfiguration(LoggingConfigurationLoggingConfigurationArgs.builder()
///                 .logDestinationConfigs(LoggingConfigurationLoggingConfigurationLogDestinationConfigArgs.builder()
///                     .logDestination(Map.of("deliveryStream", exampleAwsKinesisFirehoseDeliveryStream.name()))
///                     .logDestinationType("KinesisDataFirehose")
///                     .logType("TLS")
///                     .build())
///                 .build())
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
///       firewallArn: ${exampleAwsNetworkfirewallFirewall.arn}
///       loggingConfiguration:
///         logDestinationConfigs:
///           - logDestination:
///               deliveryStream: ${exampleAwsKinesisFirehoseDeliveryStream.name}
///             logDestinationType: KinesisDataFirehose
///             logType: TLS
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Network Firewall Logging Configurations using the `firewall_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:networkfirewall/loggingConfiguration:LoggingConfiguration example arn:aws:network-firewall:us-west-1:123456789012:firewall/example
/// ```
class LoggingConfiguration extends pulumi.CustomResource {
  /// Whether to enable the detailed firewall monitoring dashboard on the firewall. Defaults to `false`.
  late final pulumi.Output<bool> enableMonitoringDashboard;
  /// The Amazon Resource Name (ARN) of the Network Firewall firewall.
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
          options ?? pulumi.CustomResourceOptions(),
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
  }) {
    return LoggingConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
}
