import 'package:pulumi/pulumi.dart';
import '../profiling_group_agent_orchestration_config/profiling_group_agent_orchestration_config.dart';
import 'profiling_group_args.dart';

/// Resource for managing an AWS CodeGuru Profiler Profiling Group.
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
/// const example = new aws.codeguruprofiler.ProfilingGroup("example", {
/// name: "example",
/// computePlatform: "Default",
/// agentOrchestrationConfig: {
/// profilingEnabled: true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codeguruprofiler.ProfilingGroup("example",
/// name="example",
/// compute_platform="Default",
/// agent_orchestration_config={
/// "profiling_enabled": True,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.CodeGuruProfiler.ProfilingGroup("example", new()
/// {
/// Name = "example",
/// ComputePlatform = "Default",
/// AgentOrchestrationConfig = new Aws.CodeGuruProfiler.Inputs.ProfilingGroupAgentOrchestrationConfigArgs
/// {
/// ProfilingEnabled = true,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codeguruprofiler"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := codeguruprofiler.NewProfilingGroup(ctx, "example", &codeguruprofiler.ProfilingGroupArgs{
/// Name:            pulumi.String("example"),
/// ComputePlatform: pulumi.String("Default"),
/// AgentOrchestrationConfig: &codeguruprofiler.ProfilingGroupAgentOrchestrationConfigArgs{
/// ProfilingEnabled: pulumi.Bool(true),
/// },
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
/// import com.pulumi.aws.codeguruprofiler.ProfilingGroup;
/// import com.pulumi.aws.codeguruprofiler.ProfilingGroupArgs;
/// import com.pulumi.aws.codeguruprofiler.inputs.ProfilingGroupAgentOrchestrationConfigArgs;
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
/// var example = new ProfilingGroup("example", ProfilingGroupArgs.builder()
/// .name("example")
/// .computePlatform("Default")
/// .agentOrchestrationConfig(ProfilingGroupAgentOrchestrationConfigArgs.builder()
/// .profilingEnabled(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:codeguruprofiler:ProfilingGroup
/// properties:
/// name: example
/// computePlatform: Default
/// agentOrchestrationConfig:
/// profilingEnabled: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CodeGuru Profiler Profiling Group using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:codeguruprofiler/profilingGroup:ProfilingGroup example profiling_group-name-12345678
/// ```
class ProfilingGroup extends CustomResource {
  /// Specifies whether profiling is enabled or disabled for the created profiling. See Agent Orchestration Config for more details.
  late final Output<ProfilingGroupAgentOrchestrationConfig>
      agentOrchestrationConfig;

  /// ARN of the profiling group.
  late final Output<String> arn;

  /// Compute platform of the profiling group.
  late final Output<String> computePlatform;

  /// Name of the profiling group.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  ProfilingGroup(
    String name, {
    ProfilingGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:codeguruprofiler/profilingGroup:ProfilingGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.agentOrchestrationConfig =
        Output.createUnknown<ProfilingGroupAgentOrchestrationConfig>();
    this.arn = Output.createUnknown<String>();
    this.computePlatform = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
