import 'package:pulumi/pulumi.dart';
import '../app_monitor_app_monitor_configuration/app_monitor_app_monitor_configuration.dart';
import '../app_monitor_custom_events/app_monitor_custom_events.dart';
import 'app_monitor_args.dart';

/// Provides a CloudWatch RUM App Monitor resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rum.AppMonitor("example", {
/// name: "example",
/// domain: "localhost",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rum.AppMonitor("example",
/// name="example",
/// domain="localhost")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Rum.AppMonitor("example", new()
/// {
/// Name = "example",
/// Domain = "localhost",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rum"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := rum.NewAppMonitor(ctx, "example", &rum.AppMonitorArgs{
/// Name:   pulumi.String("example"),
/// Domain: pulumi.String("localhost"),
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
/// import com.pulumi.aws.rum.AppMonitor;
/// import com.pulumi.aws.rum.AppMonitorArgs;
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
/// var example = new AppMonitor("example", AppMonitorArgs.builder()
/// .name("example")
/// .domain("localhost")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:rum:AppMonitor
/// properties:
/// name: example
/// domain: localhost
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Cloudwatch RUM App Monitor using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:rum/appMonitor:AppMonitor example example
/// ```
class AppMonitor extends CustomResource {
  /// configuration data for the app monitor. See<span pulumi-lang-nodejs=" appMonitorConfiguration " pulumi-lang-dotnet=" AppMonitorConfiguration " pulumi-lang-go=" appMonitorConfiguration " pulumi-lang-python=" app_monitor_configuration " pulumi-lang-yaml=" appMonitorConfiguration " pulumi-lang-java=" appMonitorConfiguration "> app_monitor_configuration </span>below.
  late final Output<AppMonitorAppMonitorConfiguration> appMonitorConfiguration;

  /// The unique ID of the app monitor. Useful for JS templates.
  late final Output<String> appMonitorId;

  /// The Amazon Resource Name (ARN) specifying the app monitor.
  late final Output<String> arn;

  /// Specifies whether this app monitor allows the web client to define and send custom events. If you omit this parameter, custom events are `DISABLED`. See<span pulumi-lang-nodejs=" customEvents " pulumi-lang-dotnet=" CustomEvents " pulumi-lang-go=" customEvents " pulumi-lang-python=" custom_events " pulumi-lang-yaml=" customEvents " pulumi-lang-java=" customEvents "> custom_events </span>below.
  late final Output<AppMonitorCustomEvents> customEvents;

  /// Data collected by RUM is kept by RUM for 30 days and then deleted. This parameter specifies whether RUM sends a copy of this telemetry data to Amazon CloudWatch Logs in your account. This enables you to keep the telemetry data for more than 30 days, but it does incur Amazon CloudWatch Logs charges. Default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> cwLogEnabled;

  /// The name of the log group where the copies are stored.
  late final Output<String> cwLogGroup;
  late final Output<String?> domain;
  late final Output<List<String>?> domainLists;

  /// The name of the log stream.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  AppMonitor(
    String name, {
    AppMonitorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rum/appMonitor:AppMonitor',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appMonitorConfiguration =
        Output.createUnknown<AppMonitorAppMonitorConfiguration>();
    this.appMonitorId = Output.createUnknown<String>();
    this.arn = Output.createUnknown<String>();
    this.customEvents = Output.createUnknown<AppMonitorCustomEvents>();
    this.cwLogEnabled = Output.createUnknown<bool?>();
    this.cwLogGroup = Output.createUnknown<String>();
    this.domain = Output.createUnknown<String?>();
    this.domainLists = Output.createUnknown<List<String>?>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
