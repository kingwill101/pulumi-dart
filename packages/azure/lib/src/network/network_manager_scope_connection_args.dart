// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_manager_scope_connection_network_manager_scope_connection_args_doc}
/// The set of arguments for NetworkManagerScopeConnection.
/// {@endtemplate}
/// {@macro pulumi_network_network_manager_scope_connection_network_manager_scope_connection_args_doc}
class NetworkManagerScopeConnectionArgs {
  /// A description of the Network Manager Scope Connection.
  final pulumi.Input<String>? description;
  /// Specifies the name which should be used for this Network Manager Scope Connection. Changing this forces a new Network Manager Scope Connection to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the Network Manager Scope Connection. Changing this forces a new Network Manager Scope Connection to be created.
  final pulumi.Input<String> networkManagerId;
  /// Specifies the Resource ID of the target scope which the Network Manager is connected to. It should be either Subscription ID or Management Group ID.
  final pulumi.Input<String> targetScopeId;
  /// Specifies the Tenant ID of the Resource which the Network Manager is connected to.
  final pulumi.Input<String> tenantId;

  /// Creates a new [NetworkManagerScopeConnectionArgs].
  /// [description] A description of the Network Manager Scope Connection.
  /// [name] Specifies the name which should be used for this Network Manager Scope Connection. Changing this forces a new Network Manager Scope Connection to be created.
  /// [networkManagerId] Specifies the ID of the Network Manager Scope Connection. Changing this forces a new Network Manager Scope Connection to be created.
  /// [targetScopeId] Specifies the Resource ID of the target scope which the Network Manager is connected to. It should be either Subscription ID or Management Group ID.
  /// [tenantId] Specifies the Tenant ID of the Resource which the Network Manager is connected to.
  NetworkManagerScopeConnectionArgs({
    String? description,
    String? name,
    required String networkManagerId,
    required String targetScopeId,
    required String tenantId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkManagerId = pulumi.Input.asInput<String>(networkManagerId),
      targetScopeId = pulumi.Input.asInput<String>(targetScopeId),
      tenantId = pulumi.Input.asInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'networkManagerId': networkManagerId,
      'targetScopeId': targetScopeId,
      'tenantId': tenantId,
    };
  }

  factory NetworkManagerScopeConnectionArgs.fromMap(Map<String, dynamic> map) {
    return NetworkManagerScopeConnectionArgs(
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      networkManagerId: map['networkManagerId'] as String,
      targetScopeId: map['targetScopeId'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

