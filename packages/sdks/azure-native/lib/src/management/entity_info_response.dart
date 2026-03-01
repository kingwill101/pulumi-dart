// ignore_for_file: unused_element, unnecessary_cast

import 'entity_parent_group_info_response.dart';

/// The entity.
class EntityInfoResponse {
  /// The friendly name of the management group.
  final String? displayName;
  /// The fully qualified ID for the entity.  For example, /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000
  final String id;
  /// The users specific permissions to this item.
  final String? inheritedPermissions;
  /// The name of the entity. For example, 00000000-0000-0000-0000-000000000000
  final String name;
  /// Number of children is the number of Groups that are exactly one level underneath the current Group.
  final int? numberOfChildGroups;
  /// Number of children is the number of Groups and Subscriptions that are exactly one level underneath the current Group.
  final int? numberOfChildren;
  /// Number of Descendants
  final int? numberOfDescendants;
  /// (Optional) The ID of the parent management group.
  final EntityParentGroupInfoResponse? parent;
  /// The parent display name chain from the root group to the immediate parent
  final List<String>? parentDisplayNameChain;
  /// The parent name chain from the root group to the immediate parent
  final List<String>? parentNameChain;
  /// The users specific permissions to this item.
  final String? permissions;
  /// The AAD Tenant ID associated with the entity. For example, 00000000-0000-0000-0000-000000000000
  final String? tenantId;
  /// The type of the resource. For example, Microsoft.Management/managementGroups
  final String type;

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
      'parent': ?parent == null ? null : parent!.toMap(),
      'parentDisplayNameChain': ?parentDisplayNameChain,
      'parentNameChain': ?parentNameChain,
      'permissions': ?permissions,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory EntityInfoResponse.fromMap(Map<String, dynamic> map) {
    return EntityInfoResponse(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      id: map['id'] as String,
      inheritedPermissions: map['inheritedPermissions'] == null ? null : map['inheritedPermissions'] as String,
      name: map['name'] as String,
      numberOfChildGroups: map['numberOfChildGroups'] == null ? null : map['numberOfChildGroups'] as int,
      numberOfChildren: map['numberOfChildren'] == null ? null : map['numberOfChildren'] as int,
      numberOfDescendants: map['numberOfDescendants'] == null ? null : map['numberOfDescendants'] as int,
      parent: map['parent'] == null ? null : EntityParentGroupInfoResponse.fromMap((map['parent'] as Map).cast<String, dynamic>()),
      parentDisplayNameChain: map['parentDisplayNameChain'] == null ? null : (map['parentDisplayNameChain'] as List).cast<String>(),
      parentNameChain: map['parentNameChain'] == null ? null : (map['parentNameChain'] as List).cast<String>(),
      permissions: map['permissions'] == null ? null : map['permissions'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

