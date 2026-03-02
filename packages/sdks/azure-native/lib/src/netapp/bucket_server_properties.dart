// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the server managing the lifecycle of volume buckets
class BucketServerProperties {
  /// A base64-encoded PEM file, which includes both the bucket server's certificate and private key. It is used to authenticate the user and allows access to volume data in a read-only manner.
  final pulumi.Input<String>? certificateObject;
  /// The host part of the bucket URL, resolving to the bucket IP address and allowed by the server certificate.
  final pulumi.Input<String>? fqdn;

  /// Creates a new [BucketServerProperties].
  /// [certificateObject] A base64-encoded PEM file, which includes both the bucket server's certificate and private key. It is used to authenticate the user and allows access to volume data in a read-only manner.
  /// [fqdn] The host part of the bucket URL, resolving to the bucket IP address and allowed by the server certificate.
  BucketServerProperties({
    this.certificateObject,
    this.fqdn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateObject': ?certificateObject,
      'fqdn': ?fqdn,
    };
  }

  factory BucketServerProperties.fromMap(Map<String, dynamic> map) {
    return BucketServerProperties(
      certificateObject: map['certificateObject'] == null ? null : (map['certificateObject'] as String).input(),
      fqdn: map['fqdn'] == null ? null : (map['fqdn'] as String).input(),
    );
  }
}

