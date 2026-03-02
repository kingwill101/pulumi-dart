// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketAclV2AccessControlPolicyOwner {
  /// Display name of the owner.
  final pulumi.Input<String>? displayName;
  /// ID of the owner.
  final pulumi.Input<String> id;

  /// Creates a new [BucketAclV2AccessControlPolicyOwner].
  /// [displayName] Display name of the owner.
  /// [id] ID of the owner.
  BucketAclV2AccessControlPolicyOwner({
    this.displayName,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': id,
    };
  }

  factory BucketAclV2AccessControlPolicyOwner.fromMap(Map<String, dynamic> map) {
    return BucketAclV2AccessControlPolicyOwner(
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      id: (map['id'] as String).input(),
    );
  }
}

