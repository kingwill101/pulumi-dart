import 'package:pulumi/pulumi.dart';
import '../internet_monitor_health_events_config/internet_monitor_health_events_config.dart';
import '../internet_monitor_internet_measurements_log_delivery/internet_monitor_internet_measurements_log_delivery.dart';
import 'internet_monitor_args.dart';

/// Provides a Internet Monitor Monitor resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
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
/// var example = new Aws.CloudWatch.InternetMonitor("example", new()
/// {
/// MonitorName = "exmple",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudwatch.NewInternetMonitor(ctx, "example", &cloudwatch.InternetMonitorArgs{
/// MonitorName: pulumi.String("exmple"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new InternetMonitor("example", InternetMonitorArgs.builder()
/// .monitorName("exmple")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudwatch:InternetMonitor
/// properties:
/// monitorName: exmple
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Internet Monitor Monitors using the <span pulumi-lang-nodejs="`monitorName`" pulumi-lang-dotnet="`MonitorName`" pulumi-lang-go="`monitorName`" pulumi-lang-python="`monitor_name`" pulumi-lang-yaml="`monitorName`" pulumi-lang-java="`monitorName`">`monitor_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/internetMonitor:InternetMonitor some some-monitor
/// ```
class InternetMonitor extends CustomResource {
  /// ARN of the Monitor.
  late final Output<String> arn;

  /// Health event thresholds. A health event threshold percentage, for performance and availability, determines when Internet Monitor creates a health event when there's an internet issue that affects your application end users. See Health Events Config below.
  late final Output<InternetMonitorHealthEventsConfig?> healthEventsConfig;

  /// Publish internet measurements for Internet Monitor to an Amazon S3 bucket in addition to CloudWatch Logs.
  late final Output<InternetMonitorInternetMeasurementsLogDelivery?>
      internetMeasurementsLogDelivery;

  /// The maximum number of city-networks to monitor for your resources. A city-network is the location (city) where clients access your application resources from and the network or ASN, such as an internet service provider (ISP), that clients access the resources through. This limit helps control billing costs.
  late final Output<int?> maxCityNetworksToMonitor;

  /// The name of the monitor.
  ///
  /// The following arguments are optional:
  late final Output<String> monitorName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The resources to include in a monitor, which you provide as a set of Amazon Resource Names (ARNs).
  late final Output<List<String>?> resources;

  /// The status for a monitor. The accepted values for Status with the UpdateMonitor API call are the following: `ACTIVE` and `INACTIVE`.
  late final Output<String?> status;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The percentage of the internet-facing traffic for your application that you want to monitor with this monitor.
  late final Output<int?> trafficPercentageToMonitor;

  InternetMonitor(
    String name, {
    InternetMonitorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/internetMonitor:InternetMonitor',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.healthEventsConfig =
        Output.createUnknown<InternetMonitorHealthEventsConfig?>();
    this.internetMeasurementsLogDelivery =
        Output.createUnknown<InternetMonitorInternetMeasurementsLogDelivery?>();
    this.maxCityNetworksToMonitor = Output.createUnknown<int?>();
    this.monitorName = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.resources = Output.createUnknown<List<String>?>();
    this.status = Output.createUnknown<String?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.trafficPercentageToMonitor = Output.createUnknown<int?>();
  }
}
