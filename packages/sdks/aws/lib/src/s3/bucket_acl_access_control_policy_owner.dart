// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketAclAccessControlPolicyOwner {
  /// Display name of the owner.
  final pulumi.Input<String>? displayName;
  /// ID of the owner.
  final pulumi.Input<String> id;

  /// Creates a new [BucketAclAccessControlPolicyOwner].
  /// [displayName] Display name of the owner.
  /// [id] ID of the owner.
  const BucketAclAccessControlPolicyOwner({
    this.displayName,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': id,
    };
  }

  factory BucketAclAccessControlPolicyOwner.fromMap(Map<String, dynamic> map) {
    return BucketAclAccessControlPolicyOwner(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
