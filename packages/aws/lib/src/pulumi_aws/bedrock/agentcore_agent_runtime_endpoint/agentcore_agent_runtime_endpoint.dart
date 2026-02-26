import 'package:pulumi/pulumi.dart';
import '../agentcore_agent_runtime_endpoint_timeouts/agentcore_agent_runtime_endpoint_timeouts.dart';
import 'agentcore_agent_runtime_endpoint_args.dart';

/// Manages an AWS Bedrock AgentCore Agent Runtime Endpoint. Agent Runtime Endpoints provide a network-accessible interface for interacting with agent runtimes, enabling external systems to communicate with and invoke agent capabilities.
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
/// const example = new aws.bedrock.AgentcoreAgentRuntimeEndpoint("example", {
/// name: "example-endpoint",
/// agentRuntimeId: exampleAwsBedrockagentcoreAgentRuntime.agentRuntimeId,
/// description: "Endpoint for agent runtime communication",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreAgentRuntimeEndpoint("example",
/// name="example-endpoint",
/// agent_runtime_id=example_aws_bedrockagentcore_agent_runtime["agentRuntimeId"],
/// description="Endpoint for agent runtime communication")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Bedrock.AgentcoreAgentRuntimeEndpoint("example", new()
/// {
/// Name = "example-endpoint",
/// AgentRuntimeId = exampleAwsBedrockagentcoreAgentRuntime.AgentRuntimeId,
/// Description = "Endpoint for agent runtime communication",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bedrock.NewAgentcoreAgentRuntimeEndpoint(ctx, "example", &bedrock.AgentcoreAgentRuntimeEndpointArgs{
/// Name:           pulumi.String("example-endpoint"),
/// AgentRuntimeId: pulumi.Any(exampleAwsBedrockagentcoreAgentRuntime.AgentRuntimeId),
/// Description:    pulumi.String("Endpoint for agent runtime communication"),
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
/// import com.pulumi.aws.bedrock.AgentcoreAgentRuntimeEndpoint;
/// import com.pulumi.aws.bedrock.AgentcoreAgentRuntimeEndpointArgs;
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
/// var example = new AgentcoreAgentRuntimeEndpoint("example", AgentcoreAgentRuntimeEndpointArgs.builder()
/// .name("example-endpoint")
/// .agentRuntimeId(exampleAwsBedrockagentcoreAgentRuntime.agentRuntimeId())
/// .description("Endpoint for agent runtime communication")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:bedrock:AgentcoreAgentRuntimeEndpoint
/// properties:
/// name: example-endpoint
/// agentRuntimeId: ${exampleAwsBedrockagentcoreAgentRuntime.agentRuntimeId}
/// description: Endpoint for agent runtime communication
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock AgentCore Agent Runtime Endpoint using the <span pulumi-lang-nodejs="`agentRuntimeId`" pulumi-lang-dotnet="`AgentRuntimeId`" pulumi-lang-go="`agentRuntimeId`" pulumi-lang-python="`agent_runtime_id`" pulumi-lang-yaml="`agentRuntimeId`" pulumi-lang-java="`agentRuntimeId`">`agent_runtime_id`</span> and <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> separated by a comma. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreAgentRuntimeEndpoint:AgentcoreAgentRuntimeEndpoint example AGENTRUNTIME1234567890,example-endpoint
/// ```
class AgentcoreAgentRuntimeEndpoint extends CustomResource {
  /// ARN of the associated Agent Runtime.
  late final Output<String> agentRuntimeArn;

  /// ARN of the Agent Runtime Endpoint.
  late final Output<String> agentRuntimeEndpointArn;

  /// ID of the agent runtime this endpoint belongs to.
  ///
  /// The following arguments are optional:
  late final Output<String> agentRuntimeId;

  /// Version of the agent runtime to use for this endpoint.
  late final Output<String> agentRuntimeVersion;

  /// Description of the agent runtime endpoint.
  late final Output<String?> description;

  /// Name of the agent runtime endpoint.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<AgentcoreAgentRuntimeEndpointTimeouts?> timeouts;

  AgentcoreAgentRuntimeEndpoint(
    String name, {
    AgentcoreAgentRuntimeEndpointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreAgentRuntimeEndpoint:AgentcoreAgentRuntimeEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.agentRuntimeArn = registerOutput<String>('agentRuntimeArn');
    this.agentRuntimeEndpointArn =
        registerOutput<String>('agentRuntimeEndpointArn');
    this.agentRuntimeId = registerOutput<String>('agentRuntimeId');
    this.agentRuntimeVersion = registerOutput<String>('agentRuntimeVersion');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts =
        registerOutput<AgentcoreAgentRuntimeEndpointTimeouts?>('timeouts');
  }
}
