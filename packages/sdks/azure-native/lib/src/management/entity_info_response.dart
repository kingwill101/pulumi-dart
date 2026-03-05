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
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      inheritedPermissions: (() { final guardedValue = map['inheritedPermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      numberOfChildGroups: (() { final guardedValue = map['numberOfChildGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      numberOfChildren: (() { final guardedValue = map['numberOfChildren']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      numberOfDescendants: (() { final guardedValue = map['numberOfDescendants']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntityParentGroupInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parentDisplayNameChain: (() { final guardedValue = map['parentDisplayNameChain']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      parentNameChain: (() { final guardedValue = map['parentNameChain']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

