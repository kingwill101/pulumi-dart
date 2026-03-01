// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearning_workspace_network_outbound_rule_fqdn_workspace_network_outbound_rule_fqdn_args_doc}
/// The set of arguments for WorkspaceNetworkOutboundRuleFqdn.
/// {@endtemplate}
/// {@macro pulumi_machinelearning_workspace_network_outbound_rule_fqdn_workspace_network_outbound_rule_fqdn_args_doc}
class WorkspaceNetworkOutboundRuleFqdnArgs {
  /// Specifies the fully qualified domain name to allow for outbound traffic.
  final pulumi.Input<String> destinationFqdn;
  /// Specifies the name of the Machine Learning Workspace FQDN Network Outbound Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the Machine Learning Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceNetworkOutboundRuleFqdnArgs].
  /// [destinationFqdn] Specifies the fully qualified domain name to allow for outbound traffic.
  /// [name] Specifies the name of the Machine Learning Workspace FQDN Network Outbound Rule. Changing this forces a new resource to be created.
  /// [workspaceId] Specifies the ID of the Machine Learning Workspace. Changing this forces a new resource to be created.
  WorkspaceNetworkOutboundRuleFqdnArgs({
    required String destinationFqdn,
    String? name,
    required String workspaceId,
  }) :
      destinationFqdn = pulumi.Input.asInput<String>(destinationFqdn),
      name = pulumi.Input.asOptionalInput<String>(name),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationFqdn': destinationFqdn,
      'name': ?name,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceNetworkOutboundRuleFqdnArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceNetworkOutboundRuleFqdnArgs(
      destinationFqdn: map['destinationFqdn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}

