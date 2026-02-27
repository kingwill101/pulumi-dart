import 'package:pulumi/pulumi.dart' as pulumi;
import '../agent_agent_alias_routing_configuration/agent_agent_alias_routing_configuration.dart';
import '../agent_agent_alias_timeouts/agent_agent_alias_timeouts.dart';
import 'agent_agent_alias_args.dart';

/// Resource for managing an AWS Agents for Amazon Bedrock Agent Alias.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Agents for Amazon Bedrock Agent Alias using the alias ID and the agent ID separated by `,`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentAgentAlias:AgentAgentAlias example 66IVY0GUTF,GGRRAED6JP
/// ```
class AgentAgentAlias extends pulumi.CustomResource {
  /// ARN of the alias.
  late final pulumi.Output<String> agentAliasArn;

  /// Unique identifier of the alias.
  late final pulumi.Output<String> agentAliasId;

  /// Name of the alias.
  late final pulumi.Output<String> agentAliasName;

  /// Identifier of the agent to create an alias for.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> agentId;

  /// Description of the alias.
  late final pulumi.Output<String?> description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Details about the routing configuration of the alias. See `routing_configuration` Block for details.
  late final pulumi.Output<List<AgentAgentAliasRoutingConfiguration>>
      routingConfigurations;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<AgentAgentAliasTimeouts?> timeouts;

  AgentAgentAlias(
    String name, {
    AgentAgentAliasArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentAgentAlias:AgentAgentAlias',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.agentAliasArn = registerOutput<String>('agentAliasArn');
    this.agentAliasId = registerOutput<String>('agentAliasId');
    this.agentAliasName = registerOutput<String>('agentAliasName');
    this.agentId = registerOutput<String>('agentId');
    this.description = registerOutput<String?>('description');
    this.region = registerOutput<String>('region');
    this.routingConfigurations =
        registerOutput<List<AgentAgentAliasRoutingConfiguration>>(
            'routingConfigurations');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<AgentAgentAliasTimeouts?>('timeouts');
  }
}
