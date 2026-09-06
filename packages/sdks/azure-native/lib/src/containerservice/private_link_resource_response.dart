// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A private link resource
class PrivateLinkResourceResponse {
  /// The group ID of the resource.
  final pulumi.Input<String?>? groupId;
  /// The ID of the private link resource.
  final pulumi.Input<String?>? id;
  /// The name of the private link resource.
  final pulumi.Input<String?>? name;
  /// The private link service ID of the resource, this field is exposed only to NRP internally.
  final pulumi.Input<String> privateLinkServiceID;
  /// The RequiredMembers of the resource
  final pulumi.Input<List<String>?>? requiredMembers;
  /// The resource type.
  final pulumi.Input<String?>? type;

  /// Creates a new [PrivateLinkResourceResponse].
  /// [groupId] The group ID of the resource.
  /// [id] The ID of the private link resource.
  /// [name] The name of the private link resource.
  /// [privateLinkServiceID] The private link service ID of the resource, this field is exposed only to NRP internally.
  /// [requiredMembers] The RequiredMembers of the resource
  /// [type] The resource type.
  const PrivateLinkResourceResponse({
    this.groupId,
    this.id,
    this.name,
    required this.privateLinkServiceID,
    this.requiredMembers,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'id': ?id,
      'name': ?name,
      'privateLinkServiceID': privateLinkServiceID,
      'requiredMembers': ?requiredMembers,
      'type': ?type,
    };
  }

  factory PrivateLinkResourceResponse.fromMap(Map<String, dynamic> map) {
    return PrivateLinkResourceResponse(
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkServiceID: pulumi.Input.fromValue(map['privateLinkServiceID'] as String),
      requiredMembers: (() { final guardedValue = map['requiredMembers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
