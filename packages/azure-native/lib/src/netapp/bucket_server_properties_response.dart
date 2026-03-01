// ignore_for_file: unused_element, unnecessary_cast


/// Properties of the server managing the lifecycle of volume buckets
class BucketServerPropertiesResponse {
  /// Certificate Common Name taken from the certificate installed on the bucket server
  final String certificateCommonName;
  /// The bucket server's certificate expiry date.
  final String certificateExpiryDate;
  /// The host part of the bucket URL, resolving to the bucket IP address and allowed by the server certificate.
  final String? fqdn;
  /// The bucket server's IPv4 address
  final String ipAddress;

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
      certificateCommonName: map['certificateCommonName'] as String,
      certificateExpiryDate: map['certificateExpiryDate'] as String,
      fqdn: map['fqdn'] == null ? null : map['fqdn'] as String,
      ipAddress: map['ipAddress'] as String,
    );
  }
}

