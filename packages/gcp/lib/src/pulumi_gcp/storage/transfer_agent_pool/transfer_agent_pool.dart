import 'package:pulumi/pulumi.dart' as pulumi;
import '../transfer_agent_pool_bandwidth_limit/transfer_agent_pool_bandwidth_limit.dart';
import 'transfer_agent_pool_args.dart';

/// Represents an On-Premises Agent pool.
///
///
/// To get more information about AgentPool, see:
///
/// * [API documentation](https://cloud.google.com/storage-transfer/docs/reference/rest/v1/projects.agentPools)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/storage-transfer/docs/on-prem-agent-pools)
///
/// ## Example Usage
///
/// ### Agent Pool Basic
///
///
///
///
/// ## Import
///
/// AgentPool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/agentPools/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, AgentPool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/transferAgentPool:TransferAgentPool default projects/{{project}}/agentPools/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:storage/transferAgentPool:TransferAgentPool default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:storage/transferAgentPool:TransferAgentPool default {{name}}
/// ```
class TransferAgentPool extends pulumi.CustomResource {
  /// Specifies the bandwidth limit details. If this field is unspecified, the default value is set as 'No Limit'.
  /// Structure is documented below.
  late final pulumi.Output<TransferAgentPoolBandwidthLimit?> bandwidthLimit;

  /// Specifies the client-specified AgentPool description.
  late final pulumi.Output<String?> displayName;

  /// The ID of the agent pool to create.
  /// The agentPoolId must meet the following requirements:
  /// * Length of 128 characters or less.
  /// * Not start with the string goog.
  /// * Start with a lowercase ASCII character, followed by:
  /// * Zero or more: lowercase Latin alphabet characters, numerals, hyphens (-), periods (.), underscores (_), or tildes (~).
  /// * One or more numerals or lowercase ASCII characters.
  /// As expressed by the regular expression: ^(?!goog)a-z?$.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Specifies the state of the AgentPool.
  late final pulumi.Output<String> state;

  TransferAgentPool(
    String name, {
    TransferAgentPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/transferAgentPool:TransferAgentPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bandwidthLimit =
        registerOutput<TransferAgentPoolBandwidthLimit?>('bandwidthLimit');
    this.displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
  }
}
