// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A private link resource
class PrivateLinkResource {
  /// The group ID of the resource.
  final pulumi.Input<String>? groupId;
  /// The ID of the private link resource.
  final pulumi.Input<String>? id;
  /// The name of the private link resource.
  final pulumi.Input<String>? name;
  /// The RequiredMembers of the resource
  final pulumi.Input<List<String>>? requiredMembers;
  /// The resource type.
  final pulumi.Input<String>? type;

  /// Creates a new [PrivateLinkResource].
  /// [groupId] The group ID of the resource.
  /// [id] The ID of the private link resource.
  /// [name] The name of the private link resource.
  /// [requiredMembers] The RequiredMembers of the resource
  /// [type] The resource type.
  PrivateLinkResource({
    this.groupId,
    this.id,
    this.name,
    this.requiredMembers,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'id': ?id,
      'name': ?name,
      'requiredMembers': ?requiredMembers,
      'type': ?type,
    };
  }

  factory PrivateLinkResource.fromMap(Map<String, dynamic> map) {
    return PrivateLinkResource(
      groupId: map['groupId'] == null ? null : (map['groupId'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      requiredMembers: map['requiredMembers'] == null ? null : ((map['requiredMembers'] as List).cast<String>()).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

