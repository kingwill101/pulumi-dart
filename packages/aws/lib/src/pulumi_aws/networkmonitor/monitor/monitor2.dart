import 'package:pulumi/pulumi.dart';
import 'monitor_args2.dart';

/// Resource for managing an AWS Network Monitor Monitor.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmonitor.Monitor("example", {
/// aggregationPeriod: 30,
/// monitorName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmonitor.Monitor("example",
/// aggregation_period=30,
/// monitor_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.NetworkMonitor.Monitor("example", new()
/// {
/// AggregationPeriod = 30,
/// MonitorName = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmonitor"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networkmonitor.NewMonitor(ctx, "example", &networkmonitor.MonitorArgs{
/// AggregationPeriod: pulumi.Int(30),
/// MonitorName:       pulumi.String("example"),
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
/// import com.pulumi.aws.networkmonitor.Monitor;
/// import com.pulumi.aws.networkmonitor.MonitorArgs;
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
/// var example = new Monitor("example", MonitorArgs.builder()
/// .aggregationPeriod(30)
/// .monitorName("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:networkmonitor:Monitor
/// properties:
/// aggregationPeriod: 30
/// monitorName: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.networkmonitor.Monitor`" pulumi-lang-dotnet="`aws.networkmonitor.Monitor`" pulumi-lang-go="`networkmonitor.Monitor`" pulumi-lang-python="`networkmonitor.Monitor`" pulumi-lang-yaml="`aws.networkmonitor.Monitor`" pulumi-lang-java="`aws.networkmonitor.Monitor`">`aws.networkmonitor.Monitor`</span> using the monitor name. For example:
///
/// ```sh
/// $ pulumi import aws:networkmonitor/monitor:Monitor example monitor-7786087912324693644
/// ```
class Monitor2 extends CustomResource {
  /// The time, in seconds, that metrics are aggregated and sent to Amazon CloudWatch. Valid values are either 30 or 60.
  late final Output<int> aggregationPeriod;

  /// The ARN of the monitor.
  late final Output<String> arn;

  /// The name of the monitor.
  ///
  /// The following arguments are optional:
  late final Output<String> monitorName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value tags for the monitor. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Monitor2(
    String name, {
    MonitorArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkmonitor/monitor:Monitor',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.aggregationPeriod = registerOutput<int>('aggregationPeriod');
    this.arn = registerOutput<String>('arn');
    this.monitorName = registerOutput<String>('monitorName');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
