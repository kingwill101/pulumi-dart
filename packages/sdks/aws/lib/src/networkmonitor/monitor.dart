import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_args.dart';
import 'monitor_state.dart';

/// Resource for managing an AWS Network Monitor Monitor.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmonitor.Monitor("example", {
///     aggregationPeriod: 30,
///     monitorName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmonitor.Monitor("example",
///     aggregation_period=30,
///     monitor_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkMonitor.Monitor("example", new()
///     {
///         AggregationPeriod = 30,
///         MonitorName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmonitor"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkmonitor.NewMonitor(ctx, "example", &networkmonitor.MonitorArgs{
/// 			AggregationPeriod: pulumi.Int(30),
/// 			MonitorName:       pulumi.String("example"),
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
/// resource "aws_networkmonitor_monitor" "example" {
///   aggregation_period = 30
///   monitor_name       = "example"
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
///         var example = new Monitor("example", MonitorArgs.builder()
///             .aggregationPeriod(30)
///             .monitorName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkmonitor:Monitor
///     properties:
///       aggregationPeriod: 30
///       monitorName: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmonitor.Monitor` using the monitor name. For example:
///
/// ```sh
/// $ pulumi import aws:networkmonitor/monitor:Monitor example monitor-7786087912324693644
/// ```
class Monitor extends pulumi.CustomResource {
  /// The time, in seconds, that metrics are aggregated and sent to Amazon CloudWatch. Valid values are either 30 or 60.
  late final pulumi.Output<int> aggregationPeriod;
  /// The ARN of the monitor.
  late final pulumi.Output<String> arn;
  /// The name of the monitor.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> monitorName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value tags for the monitor. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Monitor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Monitor]. {@macro pulumi_networkmonitor_monitor_monitor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Monitor(
    String name, {
    MonitorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmonitor/monitor:Monitor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    aggregationPeriod = registerOutput<int>('aggregationPeriod');
    arn = registerOutput<String>('arn');
    monitorName = registerOutput<String>('monitorName');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Monitor] resource's state with the given [name] and [id].
  static Monitor get(
    String name,
    pulumi.Input<String> id, {
    MonitorState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Monitor._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Monitor._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmonitor/monitor:Monitor',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aggregationPeriod = registerOutput<int>('aggregationPeriod');
    arn = registerOutput<String>('arn');
    monitorName = registerOutput<String>('monitorName');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Monitor] resource.
  Monitor.reference(String urn)
    : super(
        'aws:networkmonitor/monitor:Monitor',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    aggregationPeriod = registerOutput<int>('aggregationPeriod');
    arn = registerOutput<String>('arn');
    monitorName = registerOutput<String>('monitorName');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
