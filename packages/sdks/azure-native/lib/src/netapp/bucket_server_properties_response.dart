// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the server managing the lifecycle of volume buckets
class BucketServerPropertiesResponse {
  /// Certificate Common Name taken from the certificate installed on the bucket server
  final pulumi.Input<String> certificateCommonName;
  /// The bucket server's certificate expiry date.
  final pulumi.Input<String> certificateExpiryDate;
  /// The host part of the bucket URL, resolving to the bucket IP address and allowed by the server certificate.
  final pulumi.Input<String>? fqdn;
  /// The bucket server's IPv4 address
  final pulumi.Input<String> ipAddress;

  /// Creates a new [BucketServerPropertiesResponse].
  /// [certificateCommonName] Certificate Common Name taken from the certificate installed on the bucket server
  /// [certificateExpiryDate] The bucket server's certificate expiry date.
  /// [fqdn] The host part of the bucket URL, resolving to the bucket IP address and allowed by the server certificate.
  /// [ipAddress] The bucket server's IPv4 address
  BucketServerPropertiesResponse({
    required this.certificateCommonName,
    required this.certificateExpiryDate,
    this.fqdn,
    required this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateCommonName': certificateCommonName,
      'certificateExpiryDate': certificateExpiryDate,
      'fqdn': ?fqdn,
      'ipAddress': ipAddress,
    };
  }

  factory BucketServerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BucketServerPropertiesResponse(
      certificateCommonName: pulumi.Input.fromValue(map['certificateCommonName'] as String),
      certificateExpiryDate: pulumi.Input.fromValue(map['certificateExpiryDate'] as String),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
    );
  }
}

