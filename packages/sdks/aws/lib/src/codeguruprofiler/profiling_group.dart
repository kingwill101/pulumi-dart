import 'package:pulumi/pulumi.dart' as pulumi;
import 'profiling_group_agent_orchestration_config.dart';
import 'profiling_group_args.dart';
import 'profiling_group_state.dart';

/// Resource for managing an AWS CodeGuru Profiler Profiling Group.
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
/// const example = new aws.codeguruprofiler.ProfilingGroup("example", {
///     agentOrchestrationConfig: {
///         profilingEnabled: true,
///     },
///     name: "example",
///     computePlatform: "Default",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codeguruprofiler.ProfilingGroup("example",
///     agent_orchestration_config={
///         "profiling_enabled": True,
///     },
///     name="example",
///     compute_platform="Default")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CodeGuruProfiler.ProfilingGroup("example", new()
///     {
///         AgentOrchestrationConfig = new Aws.CodeGuruProfiler.Inputs.ProfilingGroupAgentOrchestrationConfigArgs
///         {
///             ProfilingEnabled = true,
///         },
///         Name = "example",
///         ComputePlatform = "Default",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codeguruprofiler"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := codeguruprofiler.NewProfilingGroup(ctx, "example", &codeguruprofiler.ProfilingGroupArgs{
/// 			AgentOrchestrationConfig: &codeguruprofiler.ProfilingGroupAgentOrchestrationConfigArgs{
/// 				ProfilingEnabled: pulumi.Bool(true),
/// 			},
/// 			Name:            pulumi.String("example"),
/// 			ComputePlatform: pulumi.String("Default"),
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
/// resource "aws_codeguruprofiler_profilinggroup" "example" {
///   agent_orchestration_config = {
///     profiling_enabled = true
///   }
///   name             = "example"
///   compute_platform = "Default"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.codeguruprofiler.ProfilingGroup;
/// import com.pulumi.aws.codeguruprofiler.ProfilingGroupArgs;
/// import com.pulumi.aws.codeguruprofiler.inputs.ProfilingGroupAgentOrchestrationConfigArgs;
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
///         var example = new ProfilingGroup("example", ProfilingGroupArgs.builder()
///             .agentOrchestrationConfig(ProfilingGroupAgentOrchestrationConfigArgs.builder()
///                 .profilingEnabled(true)
///                 .build())
///             .name("example")
///             .computePlatform("Default")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:codeguruprofiler:ProfilingGroup
///     properties:
///       agentOrchestrationConfig:
///         profilingEnabled: true
///       name: example
///       computePlatform: Default
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CodeGuru Profiler Profiling Group using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:codeguruprofiler/profilingGroup:ProfilingGroup example profiling_group-name-12345678
/// ```
class ProfilingGroup extends pulumi.CustomResource {
  /// Specifies whether profiling is enabled or disabled for the created profiling. See Agent Orchestration Config for more details.
  late final pulumi.Output<ProfilingGroupAgentOrchestrationConfig> agentOrchestrationConfig;
  /// ARN of the profiling group.
  late final pulumi.Output<String> arn;
  /// Compute platform of the profiling group.
  late final pulumi.Output<String> computePlatform;
  /// Name of the profiling group.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ProfilingGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProfilingGroup]. {@macro pulumi_codeguruprofiler_profiling_group_profiling_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProfilingGroup(
    String name, {
    ProfilingGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codeguruprofiler/profilingGroup:ProfilingGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    agentOrchestrationConfig = registerOutput<ProfilingGroupAgentOrchestrationConfig>('agentOrchestrationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProfilingGroupAgentOrchestrationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    computePlatform = registerOutput<String>('computePlatform');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [ProfilingGroup] resource's state with the given [name] and [id].
  static ProfilingGroup get(
    String name,
    pulumi.Input<String> id, {
    ProfilingGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ProfilingGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ProfilingGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codeguruprofiler/profilingGroup:ProfilingGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentOrchestrationConfig = registerOutput<ProfilingGroupAgentOrchestrationConfig>('agentOrchestrationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProfilingGroupAgentOrchestrationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    computePlatform = registerOutput<String>('computePlatform');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [ProfilingGroup] resource.
  ProfilingGroup.reference(String urn)
    : super(
        'aws:codeguruprofiler/profilingGroup:ProfilingGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    agentOrchestrationConfig = registerOutput<ProfilingGroupAgentOrchestrationConfig>('agentOrchestrationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProfilingGroupAgentOrchestrationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    computePlatform = registerOutput<String>('computePlatform');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
