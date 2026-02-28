import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_pool_args.dart';
import 'bandwidth_limit_response.dart';

/// Creates an agent pool resource.
class AgentPool extends pulumi.CustomResource {
  /// Required. The ID of the agent pool to create. The `agent_pool_id` must meet the following requirements: * Length of 128 characters or less. * Not start with the string `goog`. * Start with a lowercase ASCII character, followed by: * Zero or more: lowercase Latin alphabet characters, numerals, hyphens (`-`), periods (`.`), underscores (`_`), or tildes (`~`). * One or more numerals or lowercase ASCII characters. As expressed by the regular expression: `^(?!goog)[a-z]([a-z0-9-._~]*[a-z0-9])?$`.
  late final pulumi.Output<String> agentPoolId;
  /// Specifies the bandwidth limit details. If this field is unspecified, the default value is set as 'No Limit'.
  late final pulumi.Output<BandwidthLimitResponse> bandwidthLimit;
  /// Specifies the client-specified AgentPool description.
  late final pulumi.Output<String> displayName;
  /// Specifies a unique string that identifies the agent pool. Format: `projects/{project_id}/agentPools/{agent_pool_id}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Specifies the state of the AgentPool.
  late final pulumi.Output<String> state;

  /// Creates a new [AgentPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentPool]. {@macro pulumi_storagetransfer_v1_agent_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentPool(
    String name, {
    AgentPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:storagetransfer/v1:AgentPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.agentPoolId = registerOutput<String>('agentPoolId');
    this.bandwidthLimit = registerOutput<BandwidthLimitResponse>('bandwidthLimit');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
  }
}
