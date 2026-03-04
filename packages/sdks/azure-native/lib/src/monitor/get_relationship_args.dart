// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_get_relationship_args_doc}
/// Arguments for getRelationship.
/// {@endtemplate}
/// {@macro pulumi_monitor_get_relationship_args_doc}
class GetRelationshipArgs {
  /// The name of the Azure Monitor Workspace. The name is case insensitive
  final pulumi.Input<String> azureMonitorWorkspaceName;

  /// Name of health model resource
  final pulumi.Input<String> healthModelName;

  /// Name of the relationship. Must be unique within a health model. For example, a concatenation of parentEntityName and childEntityName can be used as the name.
  final pulumi.Input<String> relationshipName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRelationshipArgs].
  /// [azureMonitorWorkspaceName] The name of the Azure Monitor Workspace. The name is case insensitive
  /// [healthModelName] Name of health model resource
  /// [relationshipName] Name of the relationship. Must be unique within a health model. For example, a concatenation of parentEntityName and childEntityName can be used as the name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetRelationshipArgs({
    required this.azureMonitorWorkspaceName,
    required this.healthModelName,
    required this.relationshipName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorWorkspaceName': azureMonitorWorkspaceName,
      'healthModelName': healthModelName,
      'relationshipName': relationshipName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRelationshipArgs.fromMap(Map<String, dynamic> map) {
    return GetRelationshipArgs(
      azureMonitorWorkspaceName: pulumi.Input.fromValue(
        map['azureMonitorWorkspaceName'] as String,
      ),
      healthModelName: pulumi.Input.fromValue(map['healthModelName'] as String),
      relationshipName: pulumi.Input.fromValue(
        map['relationshipName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
