import 'package:pulumi/pulumi.dart' as pulumi;
import 'trace_segment_destination_args.dart';
import 'trace_segment_destination_state.dart';
import 'trace_segment_destination_timeouts.dart';

/// Manages the destination of data sent to `PutTraceSegments` by AWS X-Ray.
///
/// &gt; **Note:** Removing this resource from Terraform has no effect on the destination configuration within AWS X-Ray.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.xray.TraceSegmentDestination("example", {destination: "CloudWatchLogs"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.xray.TraceSegmentDestination("example", destination="CloudWatchLogs")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Xray.TraceSegmentDestination("example", new()
///     {
///         Destination = "CloudWatchLogs",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/xray"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := xray.NewTraceSegmentDestination(ctx, "example", &xray.TraceSegmentDestinationArgs{
/// 			Destination: pulumi.String("CloudWatchLogs"),
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
/// resource "aws_xray_tracesegmentdestination" "example" {
///   destination = "CloudWatchLogs"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.xray.TraceSegmentDestination;
/// import com.pulumi.aws.xray.TraceSegmentDestinationArgs;
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
///         var example = new TraceSegmentDestination("example", TraceSegmentDestinationArgs.builder()
///             .destination("CloudWatchLogs")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:xray:TraceSegmentDestination
///     properties:
///       destination: CloudWatchLogs
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import XRay Trace Segment Destinations using the region name. For example:
///
/// ```sh
/// $ pulumi import aws:xray/traceSegmentDestination:TraceSegmentDestination example us-west-2
/// ```
class TraceSegmentDestination extends pulumi.CustomResource {
  /// Destination of trace segments. Valid values: `XRay`, `CloudWatchLogs`.
  late final pulumi.Output<String> destination;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<TraceSegmentDestinationTimeouts?> timeouts;

  /// Creates a new [TraceSegmentDestination].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TraceSegmentDestination]. {@macro pulumi_xray_trace_segment_destination_trace_segment_destination_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TraceSegmentDestination(
    String name, {
    TraceSegmentDestinationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:xray/traceSegmentDestination:TraceSegmentDestination',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    destination = registerOutput<String>('destination');
    region = registerOutput<String>('region');
    timeouts = registerOutput<TraceSegmentDestinationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TraceSegmentDestinationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [TraceSegmentDestination] resource's state with the given [name] and [id].
  static TraceSegmentDestination get(
    String name,
    pulumi.Input<String> id, {
    TraceSegmentDestinationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TraceSegmentDestination._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TraceSegmentDestination._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:xray/traceSegmentDestination:TraceSegmentDestination',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    destination = registerOutput<String>('destination');
    region = registerOutput<String>('region');
    timeouts = registerOutput<TraceSegmentDestinationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TraceSegmentDestinationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [TraceSegmentDestination] resource.
  TraceSegmentDestination.reference(String urn)
    : super(
        'aws:xray/traceSegmentDestination:TraceSegmentDestination',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    destination = registerOutput<String>('destination');
    region = registerOutput<String>('region');
    timeouts = registerOutput<TraceSegmentDestinationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TraceSegmentDestinationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
