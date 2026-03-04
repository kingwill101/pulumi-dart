import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_agent_runtime_endpoint_args.dart';
import 'agentcore_agent_runtime_endpoint_state.dart';
import 'agentcore_agent_runtime_endpoint_timeouts.dart';

/// Manages an AWS Bedrock AgentCore Agent Runtime Endpoint. Agent Runtime Endpoints provide a network-accessible interface for interacting with agent runtimes, enabling external systems to communicate with and invoke agent capabilities.
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
/// const example = new aws.bedrock.AgentcoreAgentRuntimeEndpoint("example", {
///     name: "example-endpoint",
///     agentRuntimeId: exampleAwsBedrockagentcoreAgentRuntime.agentRuntimeId,
///     description: "Endpoint for agent runtime communication",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreAgentRuntimeEndpoint("example",
///     name="example-endpoint",
///     agent_runtime_id=example_aws_bedrockagentcore_agent_runtime["agentRuntimeId"],
///     description="Endpoint for agent runtime communication")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentcoreAgentRuntimeEndpoint("example", new()
///     {
///         Name = "example-endpoint",
///         AgentRuntimeId = exampleAwsBedrockagentcoreAgentRuntime.AgentRuntimeId,
///         Description = "Endpoint for agent runtime communication",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.NewAgentcoreAgentRuntimeEndpoint(ctx, "example", &bedrock.AgentcoreAgentRuntimeEndpointArgs{
/// 			Name:           pulumi.String("example-endpoint"),
/// 			AgentRuntimeId: pulumi.Any(exampleAwsBedrockagentcoreAgentRuntime.AgentRuntimeId),
/// 			Description:    pulumi.String("Endpoint for agent runtime communication"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new AgentcoreAgentRuntimeEndpoint("example", AgentcoreAgentRuntimeEndpointArgs.builder()
///             .name("example-endpoint")
///             .agentRuntimeId(exampleAwsBedrockagentcoreAgentRuntime.agentRuntimeId())
///             .description("Endpoint for agent runtime communication")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentcoreAgentRuntimeEndpoint
///     properties:
///       name: example-endpoint
///       agentRuntimeId: ${exampleAwsBedrockagentcoreAgentRuntime.agentRuntimeId}
///       description: Endpoint for agent runtime communication
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock AgentCore Agent Runtime Endpoint using the `agent_runtime_id` and `name` separated by a comma. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreAgentRuntimeEndpoint:AgentcoreAgentRuntimeEndpoint example AGENTRUNTIME1234567890,example-endpoint
/// ```
class AgentcoreAgentRuntimeEndpoint extends pulumi.CustomResource {
  /// ARN of the associated Agent Runtime.
  late final pulumi.Output<String> agentRuntimeArn;

  /// ARN of the Agent Runtime Endpoint.
  late final pulumi.Output<String> agentRuntimeEndpointArn;

  /// ID of the agent runtime this endpoint belongs to.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> agentRuntimeId;

  /// Version of the agent runtime to use for this endpoint.
  late final pulumi.Output<String> agentRuntimeVersion;

  /// Description of the agent runtime endpoint.
  late final pulumi.Output<String?> description;

  /// Name of the agent runtime endpoint.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<AgentcoreAgentRuntimeEndpointTimeouts?> timeouts;

  /// Creates a new [AgentcoreAgentRuntimeEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentcoreAgentRuntimeEndpoint]. {@macro pulumi_bedrock_agentcore_agent_runtime_endpoint_agentcore_agent_runtime_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentcoreAgentRuntimeEndpoint(
    String name, {
    AgentcoreAgentRuntimeEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:bedrock/agentcoreAgentRuntimeEndpoint:AgentcoreAgentRuntimeEndpoint',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    agentRuntimeArn = registerOutput<String>('agentRuntimeArn');
    agentRuntimeEndpointArn = registerOutput<String>('agentRuntimeEndpointArn');
    agentRuntimeId = registerOutput<String>('agentRuntimeId');
    agentRuntimeVersion = registerOutput<String>('agentRuntimeVersion');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<AgentcoreAgentRuntimeEndpointTimeouts?>(
      'timeouts',
    );
  }

  /// Gets an existing [AgentcoreAgentRuntimeEndpoint] resource's state with the given [name] and [id].
  static AgentcoreAgentRuntimeEndpoint get(
    String name,
    pulumi.Input<String> id, {
    AgentcoreAgentRuntimeEndpointState? state,
  }) {
    return AgentcoreAgentRuntimeEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AgentcoreAgentRuntimeEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:bedrock/agentcoreAgentRuntimeEndpoint:AgentcoreAgentRuntimeEndpoint',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    agentRuntimeArn = registerOutput<String>('agentRuntimeArn');
    agentRuntimeEndpointArn = registerOutput<String>('agentRuntimeEndpointArn');
    agentRuntimeId = registerOutput<String>('agentRuntimeId');
    agentRuntimeVersion = registerOutput<String>('agentRuntimeVersion');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<AgentcoreAgentRuntimeEndpointTimeouts?>(
      'timeouts',
    );
  }
}
