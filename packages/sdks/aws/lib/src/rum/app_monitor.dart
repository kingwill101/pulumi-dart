import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_monitor_app_monitor_configuration.dart';
import 'app_monitor_args.dart';
import 'app_monitor_custom_events.dart';
import 'app_monitor_state.dart';

/// Provides a CloudWatch RUM App Monitor resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rum.AppMonitor("example", {
///     name: "example",
///     domain: "localhost",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rum.AppMonitor("example",
///     name="example",
///     domain="localhost")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Rum.AppMonitor("example", new()
///     {
///         Name = "example",
///         Domain = "localhost",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rum"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rum.NewAppMonitor(ctx, "example", &rum.AppMonitorArgs{
/// 			Name:   pulumi.String("example"),
/// 			Domain: pulumi.String("localhost"),
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
/// resource "aws_rum_appmonitor" "example" {
///   name   = "example"
///   domain = "localhost"
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
///         var example = new AppMonitor("example", AppMonitorArgs.builder()
///             .name("example")
///             .domain("localhost")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:rum:AppMonitor
///     properties:
///       name: example
///       domain: localhost
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Cloudwatch RUM App Monitor using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:rum/appMonitor:AppMonitor example example
/// ```
class AppMonitor extends pulumi.CustomResource {
  /// configuration data for the app monitor. See appMonitorConfiguration below.
  late final pulumi.Output<AppMonitorAppMonitorConfiguration> appMonitorConfiguration;
  /// The unique ID of the app monitor. Useful for JS templates.
  late final pulumi.Output<String> appMonitorId;
  /// The Amazon Resource Name (ARN) specifying the app monitor.
  late final pulumi.Output<String> arn;
  /// Specifies whether this app monitor allows the web client to define and send custom events. If you omit this parameter, custom events are `DISABLED`. See customEvents below.
  late final pulumi.Output<AppMonitorCustomEvents> customEvents;
  /// Data collected by RUM is kept by RUM for 30 days and then deleted. This parameter specifies whether RUM sends a copy of this telemetry data to Amazon CloudWatch Logs in your account. This enables you to keep the telemetry data for more than 30 days, but it does incur Amazon CloudWatch Logs charges. Default value is `false`.
  late final pulumi.Output<bool?> cwLogEnabled;
  /// The name of the log group where the copies are stored.
  late final pulumi.Output<String> cwLogGroup;
  /// The top-level internet domain name for which your application has administrative authority. Exactly one of `domain` or `domainList` must be specified.
  late final pulumi.Output<String?> domain;
  /// A list of internet domain names for which your application has administrative authority. Exactly one of `domain` or `domainList` must be specified.
  late final pulumi.Output<List<String>?> domainLists;
  /// The name of the log stream.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [AppMonitor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppMonitor]. {@macro pulumi_rum_app_monitor_app_monitor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppMonitor(
    String name, {
    AppMonitorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rum/appMonitor:AppMonitor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appMonitorConfiguration = registerOutput<AppMonitorAppMonitorConfiguration>('appMonitorConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppMonitorAppMonitorConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    appMonitorId = registerOutput<String>('appMonitorId');
    arn = registerOutput<String>('arn');
    customEvents = registerOutput<AppMonitorCustomEvents>('customEvents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppMonitorCustomEvents.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cwLogEnabled = registerOutput<bool?>('cwLogEnabled');
    cwLogGroup = registerOutput<String>('cwLogGroup');
    domain = registerOutput<String?>('domain');
    domainLists = registerOutput<List<String>?>('domainLists');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [AppMonitor] resource's state with the given [name] and [id].
  static AppMonitor get(
    String name,
    pulumi.Input<String> id, {
    AppMonitorState? state,
  }) {
    return AppMonitor._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AppMonitor._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rum/appMonitor:AppMonitor',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appMonitorConfiguration = registerOutput<AppMonitorAppMonitorConfiguration>('appMonitorConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppMonitorAppMonitorConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    appMonitorId = registerOutput<String>('appMonitorId');
    arn = registerOutput<String>('arn');
    customEvents = registerOutput<AppMonitorCustomEvents>('customEvents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppMonitorCustomEvents.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cwLogEnabled = registerOutput<bool?>('cwLogEnabled');
    cwLogGroup = registerOutput<String>('cwLogGroup');
    domain = registerOutput<String?>('domain');
    domainLists = registerOutput<List<String>?>('domainLists');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
