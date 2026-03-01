// ignore_for_file: unused_element, unnecessary_cast

class BucketAclAccessControlPolicyOwner {
  /// Display name of the owner.
  final String? displayName;

  /// ID of the owner.
  final String id;

  /// Creates a new [BucketAclAccessControlPolicyOwner].
  /// [displayName] Display name of the owner.
  /// [id] ID of the owner.
  BucketAclAccessControlPolicyOwner({this.displayName, required this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'displayName': ?displayName, 'id': id};
  }

  factory BucketAclAccessControlPolicyOwner.fromMap(Map<String, dynamic> map) {
    return BucketAclAccessControlPolicyOwner(
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      id: map['id'] as String,
    );
  }
}
