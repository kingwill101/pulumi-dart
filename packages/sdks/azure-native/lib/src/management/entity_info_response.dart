// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_parent_group_info_response.dart';

/// The entity.
class EntityInfoResponse {
  /// The friendly name of the management group.
  final pulumi.Input<String>? displayName;
  /// The fully qualified ID for the entity.  For example, /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000
  final pulumi.Input<String> id;
  /// The users specific permissions to this item.
  final pulumi.Input<String>? inheritedPermissions;
  /// The name of the entity. For example, 00000000-0000-0000-0000-000000000000
  final pulumi.Input<String> name;
  /// Number of children is the number of Groups that are exactly one level underneath the current Group.
  final pulumi.Input<int>? numberOfChildGroups;
  /// Number of children is the number of Groups and Subscriptions that are exactly one level underneath the current Group.
  final pulumi.Input<int>? numberOfChildren;
  /// Number of Descendants
  final pulumi.Input<int>? numberOfDescendants;
  /// (Optional) The ID of the parent management group.
  final pulumi.Input<EntityParentGroupInfoResponse>? parent;
  /// The parent display name chain from the root group to the immediate parent
  final pulumi.Input<List<String>>? parentDisplayNameChain;
  /// The parent name chain from the root group to the immediate parent
  final pulumi.Input<List<String>>? parentNameChain;
  /// The users specific permissions to this item.
  final pulumi.Input<String>? permissions;
  /// The AAD Tenant ID associated with the entity. For example, 00000000-0000-0000-0000-000000000000
  final pulumi.Input<String>? tenantId;
  /// The type of the resource. For example, Microsoft.Management/managementGroups
  final pulumi.Input<String> type;

  /// Creates a new [EntityInfoResponse].
  /// [displayName] The friendly name of the management group.
  /// [id] The fully qualified ID for the entity.  For example, /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000
  /// [inheritedPermissions] The users specific permissions to this item.
  /// [name] The name of the entity. For example, 00000000-0000-0000-0000-000000000000
  /// [numberOfChildGroups] Number of children is the number of Groups that are exactly one level underneath the current Group.
  /// [numberOfChildren] Number of children is the number of Groups and Subscriptions that are exactly one level underneath the current Group.
  /// [numberOfDescendants] Number of Descendants
  /// [parent] (Optional) The ID of the parent management group.
  /// [parentDisplayNameChain] The parent display name chain from the root group to the immediate parent
  /// [parentNameChain] The parent name chain from the root group to the immediate parent
  /// [permissions] The users specific permissions to this item.
  /// [tenantId] The AAD Tenant ID associated with the entity. For example, 00000000-0000-0000-0000-000000000000
  /// [type] The type of the resource. For example, Microsoft.Management/managementGroups
  EntityInfoResponse({
    this.displayName,
    required this.id,
    this.inheritedPermissions,
    required this.name,
    this.numberOfChildGroups,
    this.numberOfChildren,
    this.numberOfDescendants,
    this.parent,
    this.parentDisplayNameChain,
    this.parentNameChain,
    this.permissions,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': id,
      'inheritedPermissions': ?inheritedPermissions,
      'name': name,
      'numberOfChildGroups': ?numberOfChildGroups,
      'numberOfChildren': ?numberOfChildren,
      'numberOfDescendants': ?numberOfDescendants,
      'parent': ?pulumi.Input.mapOptionalInputValue<EntityParentGroupInfoResponse, Map<String, dynamic>>(parent, (value) => value.toMap()),
      'parentDisplayNameChain': ?parentDisplayNameChain,
      'parentNameChain': ?parentNameChain,
      'permissions': ?permissions,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory EntityInfoResponse.fromMap(Map<String, dynamic> map) {
    return EntityInfoResponse(
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      id: (map['id'] as String).input(),
      inheritedPermissions: map['inheritedPermissions'] == null ? null : (map['inheritedPermissions'] as String).input(),
      name: (map['name'] as String).input(),
      numberOfChildGroups: map['numberOfChildGroups'] == null ? null : (map['numberOfChildGroups'] as int).input(),
      numberOfChildren: map['numberOfChildren'] == null ? null : (map['numberOfChildren'] as int).input(),
      numberOfDescendants: map['numberOfDescendants'] == null ? null : (map['numberOfDescendants'] as int).input(),
      parent: map['parent'] == null ? null : (EntityParentGroupInfoResponse.fromMap((map['parent'] as Map).cast<String, dynamic>())).input(),
      parentDisplayNameChain: map['parentDisplayNameChain'] == null ? null : ((map['parentDisplayNameChain'] as List).cast<String>()).input(),
      parentNameChain: map['parentNameChain'] == null ? null : ((map['parentNameChain'] as List).cast<String>()).input(),
      permissions: map['permissions'] == null ? null : (map['permissions'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

