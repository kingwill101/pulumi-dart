// ignore_for_file: unused_element, unnecessary_cast

class BucketLoggingV2TargetGrantGrantee {
  final String? displayName;

  /// Email address of the grantee. See [Regions and Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region) for supported AWS regions where this argument can be specified.
  final String? emailAddress;

  /// Canonical user ID of the grantee.
  final String? id;

  /// Type of grantee. Valid values: `CanonicalUser`, `AmazonCustomerByEmail`, `Group`.
  final String type;

  /// URI of the grantee group.
  final String? uri;

  /// Creates a new [BucketLoggingV2TargetGrantGrantee].
  /// [displayName] Optional.
  /// [emailAddress] Email address of the grantee. See [Regions and Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region) for supported AWS regions where this argument can be specified.
  /// [id] Canonical user ID of the grantee.
  /// [type] Type of grantee. Valid values: `CanonicalUser`, `AmazonCustomerByEmail`, `Group`.
  /// [uri] URI of the grantee group.
  BucketLoggingV2TargetGrantGrantee({
    this.displayName,
    this.emailAddress,
    this.id,
    required this.type,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'emailAddress': ?emailAddress,
      'id': ?id,
      'type': type,
      'uri': ?uri,
    };
  }

  factory BucketLoggingV2TargetGrantGrantee.fromMap(Map<String, dynamic> map) {
    return BucketLoggingV2TargetGrantGrantee(
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      emailAddress: map['emailAddress'] == null
          ? null
          : map['emailAddress'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      type: map['type'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
