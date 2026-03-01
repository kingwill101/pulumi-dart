// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_type.dart';

/// {@template pulumi_apimanagement_workspace_group_args_doc}
/// The set of arguments for WorkspaceGroup.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_group_args_doc}
class WorkspaceGroupArgs {
  /// Group description.
  final pulumi.Input<String>? description;
  /// Group name.
  final pulumi.Input<String> displayName;
  /// Identifier of the external groups, this property contains the id of the group from the external identity provider, e.g. for Azure Active Directory `aad://<tenant>.onmicrosoft.com/groups/<group object id>`; otherwise the value is null.
  final pulumi.Input<String>? externalId;
  /// Group identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? groupId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Group type.
  final pulumi.Input<GroupType>? type;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceGroupArgs].
  /// [description] Group description.
  /// [displayName] Group name.
  /// [externalId] Identifier of the external groups, this property contains the id of the group from the external identity provider, e.g. for Azure Active Directory `aad://<tenant>.onmicrosoft.com/groups/<group object id>`; otherwise the value is null.
  /// [groupId] Group identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [type] Group type.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  WorkspaceGroupArgs({
    String? description,
    required String displayName,
    String? externalId,
    String? groupId,
    required String resourceGroupName,
    required String serviceName,
    GroupType? type,
    required String workspaceId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      externalId = pulumi.Input.asOptionalInput<String>(externalId),
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      type = pulumi.Input.asOptionalInput<GroupType>(type),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'externalId': ?externalId,
      'groupId': ?groupId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'type': ?pulumi.Input.mapOptionalInputValue<GroupType, String>(type, (value) => value.value),
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceGroupArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceGroupArgs(
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      externalId: map['externalId'] == null ? null : map['externalId'] as String,
      groupId: map['groupId'] == null ? null : map['groupId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      type: map['type'] == null ? null : GroupType.fromValue(map['type'] as String),
      workspaceId: map['workspaceId'] as String,
    );
  }
}

