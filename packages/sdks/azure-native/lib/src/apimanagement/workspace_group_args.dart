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
  /// Identifier of the external groups, this property contains the id of the group from the external identity provider, e.g. for Azure Active Directory `aad://&lt;tenant&gt;.onmicrosoft.com/groups/&lt;group object id&gt;`; otherwise the value is null.
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
  /// [externalId] Identifier of the external groups, this property contains the id of the group from the external identity provider, e.g. for Azure Active Directory `aad://&lt;tenant&gt;.onmicrosoft.com/groups/&lt;group object id&gt;`; otherwise the value is null.
  /// [groupId] Group identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [type] Group type.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  const WorkspaceGroupArgs({
    this.description,
    required this.displayName,
    this.externalId,
    this.groupId,
    required this.resourceGroupName,
    required this.serviceName,
    this.type,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'externalId': ?externalId,
      'groupId': ?groupId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'type': ?pulumi.Input.mapOptionalInputValue<GroupType, String>(type, (value) => value.wireValue),
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceGroupArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceGroupArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupType.fromValue(guardedValue as String)); })(),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
