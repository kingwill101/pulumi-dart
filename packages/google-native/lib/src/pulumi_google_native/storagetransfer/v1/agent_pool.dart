import 'package:pulumi/pulumi.dart';
import 'agent_pool_args.dart';
import 'bandwidth_limit_response.dart';

/// Creates an agent pool resource.
class AgentPool extends CustomResource {
  /// Required. The ID of the agent pool to create. The `agent_pool_id` must meet the following requirements: * Length of 128 characters or less. * Not start with the string `goog`. * Start with a lowercase ASCII character, followed by: * Zero or more: lowercase Latin alphabet characters, numerals, hyphens (`-`), periods (`.`), underscores (`_`), or tildes (`~`). * One or more numerals or lowercase ASCII characters. As expressed by the regular expression: `^(?!goog)[a-z]([a-z0-9-._~]*[a-z0-9])?$`.
  late final Output<String> agentPoolId;

  /// Specifies the bandwidth limit details. If this field is unspecified, the default value is set as 'No Limit'.
  late final Output<BandwidthLimitResponse> bandwidthLimit;

  /// Specifies the client-specified AgentPool description.
  late final Output<String> displayName;

  /// Specifies a unique string that identifies the agent pool. Format: `projects/{project_id}/agentPools/{agent_pool_id}`
  late final Output<String> name;
  late final Output<String> project;

  /// Specifies the state of the AgentPool.
  late final Output<String> state;

  AgentPool(
    String name, {
    AgentPoolArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:storagetransfer/v1:AgentPool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.agentPoolId = registerOutput<String>('agentPoolId');
    this.bandwidthLimit =
        registerOutput<BandwidthLimitResponse>('bandwidthLimit');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
  }
}
