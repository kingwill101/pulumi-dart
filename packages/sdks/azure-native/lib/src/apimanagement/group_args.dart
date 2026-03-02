// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_type.dart';

/// {@template pulumi_apimanagement_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_group_args_doc}
class GroupArgs {
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

  /// Creates a new [GroupArgs].
  /// [description] Group description.
  /// [displayName] Group name.
  /// [externalId] Identifier of the external groups, this property contains the id of the group from the external identity provider, e.g. for Azure Active Directory `aad://<tenant>.onmicrosoft.com/groups/<group object id>`; otherwise the value is null.
  /// [groupId] Group identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [type] Group type.
  GroupArgs({
    this.description,
    required this.displayName,
    this.externalId,
    this.groupId,
    required this.resourceGroupName,
    required this.serviceName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'externalId': ?externalId,
      'groupId': ?groupId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'type': ?pulumi.Input.mapOptionalInputValue<GroupType, String>(type, (value) => value.value),
    };
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      externalId: map['externalId'] == null ? null : (map['externalId'] as String).input(),
      groupId: map['groupId'] == null ? null : (map['groupId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      type: map['type'] == null ? null : (GroupType.fromValue(map['type'] as String)).input(),
    );
  }
}

