import 'package:pulumi/pulumi.dart' as pulumi;
import 'internet_monitor_args.dart';
import 'internet_monitor_health_events_config.dart';
import 'internet_monitor_internet_measurements_log_delivery.dart';

/// Provides a Internet Monitor Monitor resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatch.InternetMonitor("example", {monitorName: "exmple"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.InternetMonitor("example", monitor_name="exmple")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudWatch.InternetMonitor("example", new()
///     {
///         MonitorName = "exmple",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatch.NewInternetMonitor(ctx, "example", &cloudwatch.InternetMonitorArgs{
/// 			MonitorName: pulumi.String("exmple"),
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
/// import com.pulumi.aws.cloudwatch.InternetMonitor;
/// import com.pulumi.aws.cloudwatch.InternetMonitorArgs;
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
///         var example = new InternetMonitor("example", InternetMonitorArgs.builder()
///             .monitorName("exmple")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:InternetMonitor
///     properties:
///       monitorName: exmple
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Internet Monitor Monitors using the `monitor_name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/internetMonitor:InternetMonitor some some-monitor
/// ```
class InternetMonitor extends pulumi.CustomResource {
  /// ARN of the Monitor.
  late final pulumi.Output<String> arn;

  /// Health event thresholds. A health event threshold percentage, for performance and availability, determines when Internet Monitor creates a health event when there's an internet issue that affects your application end users. See Health Events Config below.
  late final pulumi.Output<InternetMonitorHealthEventsConfig?>
  healthEventsConfig;

  /// Publish internet measurements for Internet Monitor to an Amazon S3 bucket in addition to CloudWatch Logs.
  late final pulumi.Output<InternetMonitorInternetMeasurementsLogDelivery?>
  internetMeasurementsLogDelivery;

  /// The maximum number of city-networks to monitor for your resources. A city-network is the location (city) where clients access your application resources from and the network or ASN, such as an internet service provider (ISP), that clients access the resources through. This limit helps control billing costs.
  late final pulumi.Output<int?> maxCityNetworksToMonitor;

  /// The name of the monitor.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> monitorName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The resources to include in a monitor, which you provide as a set of Amazon Resource Names (ARNs).
  late final pulumi.Output<List<String>?> resources;

  /// The status for a monitor. The accepted values for Status with the UpdateMonitor API call are the following: `ACTIVE` and `INACTIVE`.
  late final pulumi.Output<String?> status;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The percentage of the internet-facing traffic for your application that you want to monitor with this monitor.
  late final pulumi.Output<int?> trafficPercentageToMonitor;

  /// Creates a new [InternetMonitor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InternetMonitor]. {@macro pulumi_cloudwatch_internet_monitor_internet_monitor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InternetMonitor(
    String name, {
    InternetMonitorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cloudwatch/internetMonitor:InternetMonitor',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.healthEventsConfig =
        registerOutput<InternetMonitorHealthEventsConfig?>(
          'healthEventsConfig',
        );
    this.internetMeasurementsLogDelivery =
        registerOutput<InternetMonitorInternetMeasurementsLogDelivery?>(
          'internetMeasurementsLogDelivery',
        );
    this.maxCityNetworksToMonitor = registerOutput<int?>(
      'maxCityNetworksToMonitor',
    );
    this.monitorName = registerOutput<String>('monitorName');
    this.region = registerOutput<String>('region');
    this.resources = registerOutput<List<String>?>('resources');
    this.status = registerOutput<String?>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.trafficPercentageToMonitor = registerOutput<int?>(
      'trafficPercentageToMonitor',
    );
  }
}
