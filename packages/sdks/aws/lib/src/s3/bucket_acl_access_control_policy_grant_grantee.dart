// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketAclAccessControlPolicyGrantGrantee {
  /// Display name of the owner.
  final pulumi.Input<String>? displayName;
  /// Email address of the grantee. See [Regions and Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region) for supported AWS regions where this argument can be specified.
  final pulumi.Input<String>? emailAddress;
  /// Canonical user ID of the grantee.
  final pulumi.Input<String>? id;
  /// Type of grantee. Valid values: `CanonicalUser`, `AmazonCustomerByEmail`, `Group`.
  final pulumi.Input<String> type;
  /// URI of the grantee group.
  final pulumi.Input<String>? uri;

  /// Creates a new [BucketAclAccessControlPolicyGrantGrantee].
  /// [displayName] Display name of the owner.
  /// [emailAddress] Email address of the grantee. See [Regions and Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region) for supported AWS regions where this argument can be specified.
  /// [id] Canonical user ID of the grantee.
  /// [type] Type of grantee. Valid values: `CanonicalUser`, `AmazonCustomerByEmail`, `Group`.
  /// [uri] URI of the grantee group.
  BucketAclAccessControlPolicyGrantGrantee({
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

  factory BucketAclAccessControlPolicyGrantGrantee.fromMap(Map<String, dynamic> map) {
    return BucketAclAccessControlPolicyGrantGrantee(
      displayName: map['displayName'] == null ? null : ((map['displayName'] as String).input()).input(),
      emailAddress: map['emailAddress'] == null ? null : ((map['emailAddress'] as String).input()).input(),
      id: map['id'] == null ? null : ((map['id'] as String).input()).input(),
      type: (map['type'] as String).input(),
      uri: map['uri'] == null ? null : ((map['uri'] as String).input()).input(),
    );
  }
}

