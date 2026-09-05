import 'package:pulumi/pulumi.dart' as pulumi;
import 'internet_monitor_args.dart';
import 'internet_monitor_health_events_config.dart';
import 'internet_monitor_internet_measurements_log_delivery.dart';
import 'internet_monitor_state.dart';

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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_cloudwatch_internetmonitor" "example" {
///   monitor_name = "exmple"
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
/// Using `pulumi import`, import Internet Monitor Monitors using the `monitorName`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/internetMonitor:InternetMonitor some some-monitor
/// ```
class InternetMonitor extends pulumi.CustomResource {
  /// ARN of the Monitor.
  late final pulumi.Output<String> arn;
  /// Health event thresholds. A health event threshold percentage, for performance and availability, determines when Internet Monitor creates a health event when there's an internet issue that affects your application end users. See Health Events Config below.
  late final pulumi.Output<InternetMonitorHealthEventsConfig?> healthEventsConfig;
  /// Publish internet measurements for Internet Monitor to an Amazon S3 bucket in addition to CloudWatch Logs.
  late final pulumi.Output<InternetMonitorInternetMeasurementsLogDelivery?> internetMeasurementsLogDelivery;
  /// The maximum number of city-networks to monitor for your resources. A city-network is the location (city) where clients access your application resources from and the network or ASN, such as an internet service provider (ISP), that clients access the resources through. This limit helps control billing costs.
  late final pulumi.Output<int?> maxCityNetworksToMonitor;
  /// The name of the monitor.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> monitorName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Resources to include in a monitor, which you provide as a set of ARNs.
  late final pulumi.Output<List<String>?> resources;
  /// The status for a monitor. The accepted values for Status with the UpdateMonitor API call are the following: `ACTIVE` and `INACTIVE`.
  late final pulumi.Output<String?> status;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    healthEventsConfig = registerOutput<InternetMonitorHealthEventsConfig?>('healthEventsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InternetMonitorHealthEventsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    internetMeasurementsLogDelivery = registerOutput<InternetMonitorInternetMeasurementsLogDelivery?>('internetMeasurementsLogDelivery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InternetMonitorInternetMeasurementsLogDelivery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maxCityNetworksToMonitor = registerOutput<int?>('maxCityNetworksToMonitor');
    monitorName = registerOutput<String>('monitorName');
    region = registerOutput<String>('region');
    resources = registerOutput<List<String>?>('resources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    status = registerOutput<String?>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trafficPercentageToMonitor = registerOutput<int?>('trafficPercentageToMonitor');
  }

  /// Gets an existing [InternetMonitor] resource's state with the given [name] and [id].
  static InternetMonitor get(
    String name,
    pulumi.Input<String> id, {
    InternetMonitorState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InternetMonitor._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InternetMonitor._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/internetMonitor:InternetMonitor',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    healthEventsConfig = registerOutput<InternetMonitorHealthEventsConfig?>('healthEventsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InternetMonitorHealthEventsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    internetMeasurementsLogDelivery = registerOutput<InternetMonitorInternetMeasurementsLogDelivery?>('internetMeasurementsLogDelivery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InternetMonitorInternetMeasurementsLogDelivery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maxCityNetworksToMonitor = registerOutput<int?>('maxCityNetworksToMonitor');
    monitorName = registerOutput<String>('monitorName');
    region = registerOutput<String>('region');
    resources = registerOutput<List<String>?>('resources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    status = registerOutput<String?>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trafficPercentageToMonitor = registerOutput<int?>('trafficPercentageToMonitor');
  }

  /// Creates a typed reference to an existing [InternetMonitor] resource.
  InternetMonitor.reference(String urn)
    : super(
        'aws:cloudwatch/internetMonitor:InternetMonitor',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    healthEventsConfig = registerOutput<InternetMonitorHealthEventsConfig?>('healthEventsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InternetMonitorHealthEventsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    internetMeasurementsLogDelivery = registerOutput<InternetMonitorInternetMeasurementsLogDelivery?>('internetMeasurementsLogDelivery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InternetMonitorInternetMeasurementsLogDelivery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maxCityNetworksToMonitor = registerOutput<int?>('maxCityNetworksToMonitor');
    monitorName = registerOutput<String>('monitorName');
    region = registerOutput<String>('region');
    resources = registerOutput<List<String>?>('resources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    status = registerOutput<String?>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trafficPercentageToMonitor = registerOutput<int?>('trafficPercentageToMonitor');
  }
}
