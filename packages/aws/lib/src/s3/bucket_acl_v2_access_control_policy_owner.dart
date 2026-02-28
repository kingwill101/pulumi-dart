// ignore_for_file: unused_element, unnecessary_cast

class BucketAclV2AccessControlPolicyOwner {
  /// Display name of the owner.
  final String? displayName;

  /// ID of the owner.
  final String id;

  /// Creates a new [BucketAclV2AccessControlPolicyOwner].
  /// [displayName] Display name of the owner.
  /// [id] ID of the owner.
  BucketAclV2AccessControlPolicyOwner({
    this.displayName,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['id'] = id;
    return map;
  }

  factory BucketAclV2AccessControlPolicyOwner.fromMap(
      Map<String, dynamic> map) {
    return BucketAclV2AccessControlPolicyOwner(
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      id: map['id'] as String,
    );
  }
}
