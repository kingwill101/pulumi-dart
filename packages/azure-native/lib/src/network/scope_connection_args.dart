// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_scope_connection_args_doc}
/// The set of arguments for ScopeConnection.
/// {@endtemplate}
/// {@macro pulumi_network_scope_connection_args_doc}
class ScopeConnectionArgs {
  /// A description of the scope connection.
  final pulumi.Input<String>? description;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource ID.
  final pulumi.Input<String>? resourceId;
  /// Name for the cross-tenant connection.
  final pulumi.Input<String>? scopeConnectionName;
  /// Tenant ID.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [ScopeConnectionArgs].
  /// [description] A description of the scope connection.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group.
  /// [resourceId] Resource ID.
  /// [scopeConnectionName] Name for the cross-tenant connection.
  /// [tenantId] Tenant ID.
  ScopeConnectionArgs({
    String? description,
    required String networkManagerName,
    required String resourceGroupName,
    String? resourceId,
    String? scopeConnectionName,
    String? tenantId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      scopeConnectionName = pulumi.Input.asOptionalInput<String>(scopeConnectionName),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
      'resourceId': ?resourceId,
      'scopeConnectionName': ?scopeConnectionName,
      'tenantId': ?tenantId,
    };
  }

  factory ScopeConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ScopeConnectionArgs(
      description: map['description'] == null ? null : map['description'] as String,
      networkManagerName: map['networkManagerName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      scopeConnectionName: map['scopeConnectionName'] == null ? null : map['scopeConnectionName'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

