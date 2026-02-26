// ignore_for_file: unused_element, unnecessary_cast

class BucketAclAccessControlPolicyGrantGrantee {
  /// Display name of the owner.
  final String? displayName;

  /// Email address of the grantee. See [Regions and Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region) for supported AWS regions where this argument can be specified.
  final String? emailAddress;

  /// Canonical user ID of the grantee.
  final String? id;

  /// Type of grantee. Valid values: `CanonicalUser`, `AmazonCustomerByEmail`, `Group`.
  final String type;

  /// URI of the grantee group.
  final String? uri;

  BucketAclAccessControlPolicyGrantGrantee({
    this.displayName,
    this.emailAddress,
    this.id,
    required this.type,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final emailAddressValue = emailAddress;
    if (emailAddressValue != null) {
      map['emailAddress'] = emailAddressValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    map['type'] = type;
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory BucketAclAccessControlPolicyGrantGrantee.fromMap(
      Map<String, dynamic> map) {
    return BucketAclAccessControlPolicyGrantGrantee(
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      emailAddress:
          map['emailAddress'] == null ? null : map['emailAddress'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      type: map['type'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
