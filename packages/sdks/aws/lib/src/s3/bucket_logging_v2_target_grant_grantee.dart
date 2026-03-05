// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLoggingV2TargetGrantGrantee {
  final pulumi.Input<String>? displayName;
  /// Email address of the grantee. See [Regions and Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region) for supported AWS regions where this argument can be specified.
  final pulumi.Input<String>? emailAddress;
  /// Canonical user ID of the grantee.
  final pulumi.Input<String>? id;
  /// Type of grantee. Valid values: `CanonicalUser`, `AmazonCustomerByEmail`, `Group`.
  final pulumi.Input<String> type;
  /// URI of the grantee group.
  final pulumi.Input<String>? uri;

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
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailAddress: (() { final guardedValue = map['emailAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

