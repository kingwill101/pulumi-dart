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
  BucketAclAccessControlPolicyOwner({
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
      displayName: map['displayName'] == null ? null : ((map['displayName'] as String).input()).input(),
      id: (map['id'] as String).input(),
    );
  }
}

