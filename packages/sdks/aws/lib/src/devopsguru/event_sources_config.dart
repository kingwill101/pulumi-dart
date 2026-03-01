import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_sources_config_args.dart';
import 'event_sources_config_event_source.dart';
import 'event_sources_config_state.dart';

/// Resource for managing an AWS DevOps Guru Event Sources Config. Currently the only service that can be integrated with DevOps Guru is Amazon CodeGuru Profiler, which can produce proactive recommendations which can be stored and viewed in DevOps Guru.
///
/// > Destruction of this resource will set the CodeGuru profiler status to `DISABLED`. If you wish to preserve an `ENABLED` configuration while removing the Terraform resource, utilize a `removed` block (available in Terraform 1.7+).
///
/// > Event sources are configured at the account level. To avoid persistent differences, this resource should be defined only once.
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
/// const example = new aws.devopsguru.EventSourcesConfig("example", {eventSources: [{
///     amazonCodeGuruProfilers: [{
///         status: "ENABLED",
///     }],
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.devopsguru.EventSourcesConfig("example", event_sources=[{
///     "amazon_code_guru_profilers": [{
///         "status": "ENABLED",
///     }],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DevOpsGuru.EventSourcesConfig("example", new()
///     {
///         EventSources = new[]
///         {
///             new Aws.DevOpsGuru.Inputs.EventSourcesConfigEventSourceArgs
///             {
///                 AmazonCodeGuruProfilers = new[]
///                 {
///                     new Aws.DevOpsGuru.Inputs.EventSourcesConfigEventSourceAmazonCodeGuruProfilerArgs
///                     {
///                         Status = "ENABLED",
///                     },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/devopsguru"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devopsguru.NewEventSourcesConfig(ctx, "example", &devopsguru.EventSourcesConfigArgs{
/// 			EventSources: devopsguru.EventSourcesConfigEventSourceArray{
/// 				&devopsguru.EventSourcesConfigEventSourceArgs{
/// 					AmazonCodeGuruProfilers: devopsguru.EventSourcesConfigEventSourceAmazonCodeGuruProfilerArray{
/// 						&devopsguru.EventSourcesConfigEventSourceAmazonCodeGuruProfilerArgs{
/// 							Status: pulumi.String("ENABLED"),
/// 						},
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
/// import com.pulumi.aws.devopsguru.EventSourcesConfig;
/// import com.pulumi.aws.devopsguru.EventSourcesConfigArgs;
/// import com.pulumi.aws.devopsguru.inputs.EventSourcesConfigEventSourceArgs;
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
///         var example = new EventSourcesConfig("example", EventSourcesConfigArgs.builder()
///             .eventSources(EventSourcesConfigEventSourceArgs.builder()
///                 .amazonCodeGuruProfilers(EventSourcesConfigEventSourceAmazonCodeGuruProfilerArgs.builder()
///                     .status("ENABLED")
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
///     type: aws:devopsguru:EventSourcesConfig
///     properties:
///       eventSources:
///         - amazonCodeGuruProfilers:
///             - status: ENABLED
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import DevOps Guru Event Sources Config using the region. For example:
///
/// ```sh
/// $ pulumi import aws:devopsguru/eventSourcesConfig:EventSourcesConfig example us-east-1
/// ```
class EventSourcesConfig extends pulumi.CustomResource {
  /// Configuration information about the integration of DevOps Guru as the Consumer via EventBridge with another AWS Service. See `event_sources` below.
  late final pulumi.Output<List<EventSourcesConfigEventSource>> eventSources;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [EventSourcesConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventSourcesConfig]. {@macro pulumi_devopsguru_event_sources_config_event_sources_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventSourcesConfig(
    String name, {
    EventSourcesConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:devopsguru/eventSourcesConfig:EventSourcesConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.eventSources = registerOutput<List<EventSourcesConfigEventSource>>('eventSources');
    this.region = registerOutput<String>('region');
  }

  /// Gets an existing [EventSourcesConfig] resource's state with the given [name] and [id].
  static EventSourcesConfig get(
    String name,
    pulumi.Input<String> id, {
    EventSourcesConfigState? state,
  }) {
    return EventSourcesConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EventSourcesConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:devopsguru/eventSourcesConfig:EventSourcesConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.eventSources = registerOutput<List<EventSourcesConfigEventSource>>('eventSources');
    this.region = registerOutput<String>('region');
  }
}
