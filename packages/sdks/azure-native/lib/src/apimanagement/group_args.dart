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
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? externalId,
    pulumi.Output<String>? groupId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    pulumi.Output<GroupType>? type,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      externalId = pulumi.Input.asOptionalInput<String>(externalId),
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      type = pulumi.Input.asOptionalInput<GroupType>(type);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      externalId: map['externalId'] == null ? null : pulumi.Output.create<String>(map['externalId'] as String),
      groupId: map['groupId'] == null ? null : pulumi.Output.create<String>(map['groupId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<GroupType>(GroupType.fromValue(map['type'] as String)),
    );
  }
}

