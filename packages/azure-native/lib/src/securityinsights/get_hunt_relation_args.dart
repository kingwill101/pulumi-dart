// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_hunt_relation_args_doc}
/// Arguments for getHuntRelation.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_hunt_relation_args_doc}
class GetHuntRelationArgs {
  /// The hunt id (GUID)
  final pulumi.Input<String> huntId;
  /// The hunt relation id (GUID)
  final pulumi.Input<String> huntRelationId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetHuntRelationArgs].
  /// [huntId] The hunt id (GUID)
  /// [huntRelationId] The hunt relation id (GUID)
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetHuntRelationArgs({
    required String huntId,
    required String huntRelationId,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      huntId = pulumi.Input.asInput<String>(huntId),
      huntRelationId = pulumi.Input.asInput<String>(huntRelationId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'huntId': huntId,
      'huntRelationId': huntRelationId,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetHuntRelationArgs.fromMap(Map<String, dynamic> map) {
    return GetHuntRelationArgs(
      huntId: map['huntId'] as String,
      huntRelationId: map['huntRelationId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

