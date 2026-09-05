import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_sources_config_args.dart';
import 'event_sources_config_event_source.dart';
import 'event_sources_config_state.dart';

/// Resource for managing an AWS DevOps Guru Event Sources Config. Currently the only service that can be integrated with DevOps Guru is Amazon CodeGuru Profiler, which can produce proactive recommendations which can be stored and viewed in DevOps Guru.
///
/// &gt; Destruction of this resource will set the CodeGuru profiler status to `DISABLED`. If you wish to preserve an `ENABLED` configuration while removing the Terraform resource, utilize a `removed` block (available in Terraform 1.7+).
///
/// &gt; Event sources are configured at the account level. To avoid persistent differences, this resource should be defined only once.
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_devopsguru_eventsourcesconfig" "example" {
///   event_sources {
///     amazon_code_guru_profilers {
///       status = "ENABLED"
///     }
///   }
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
/// import com.pulumi.aws.devopsguru.inputs.EventSourcesConfigEventSourceAmazonCodeGuruProfilerArgs;
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
/// ### Identity Schema
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import DevOps Guru Event Sources Config using the region. For example:
///
/// ```sh
/// $ pulumi import aws:devopsguru/eventSourcesConfig:EventSourcesConfig example us-east-1
/// ```
class EventSourcesConfig extends pulumi.CustomResource {
  /// Configuration information about the integration of DevOps Guru as the Consumer via EventBridge with another AWS Service. See `eventSources` below.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    eventSources = registerOutput<List<EventSourcesConfigEventSource>>('eventSources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EventSourcesConfigEventSource>(guardedValue, (value) => EventSourcesConfigEventSource.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
  }

  /// Gets an existing [EventSourcesConfig] resource's state with the given [name] and [id].
  static EventSourcesConfig get(
    String name,
    pulumi.Input<String> id, {
    EventSourcesConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EventSourcesConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    eventSources = registerOutput<List<EventSourcesConfigEventSource>>('eventSources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EventSourcesConfigEventSource>(guardedValue, (value) => EventSourcesConfigEventSource.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [EventSourcesConfig] resource.
  EventSourcesConfig.reference(String urn)
    : super(
        'aws:devopsguru/eventSourcesConfig:EventSourcesConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    eventSources = registerOutput<List<EventSourcesConfigEventSource>>('eventSources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EventSourcesConfigEventSource>(guardedValue, (value) => EventSourcesConfigEventSource.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
  }
}
