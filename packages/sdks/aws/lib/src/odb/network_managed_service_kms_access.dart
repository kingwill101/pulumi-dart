// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkManagedServiceKmsAccess {
  /// Domain name for which the DNS queries are forwarded.
  final pulumi.Input<String> domainName;
  /// List of IPv4 addresses for the Amazon STS access.
  final pulumi.Input<List<String>> ipv4Addresses;
  /// Endpoint policy for KMS access from the ODB network.
  final pulumi.Input<String> kmsPolicyDocument;
  /// Status of the Zero-ETL access.
  final pulumi.Input<String> status;

  /// Creates a new [NetworkManagedServiceKmsAccess].
  /// [domainName] Domain name for which the DNS queries are forwarded.
  /// [ipv4Addresses] List of IPv4 addresses for the Amazon STS access.
  /// [kmsPolicyDocument] Endpoint policy for KMS access from the ODB network.
  /// [status] Status of the Zero-ETL access.
  const NetworkManagedServiceKmsAccess({
    required this.domainName,
    required this.ipv4Addresses,
    required this.kmsPolicyDocument,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'ipv4Addresses': ipv4Addresses,
      'kmsPolicyDocument': kmsPolicyDocument,
      'status': status,
    };
  }

  factory NetworkManagedServiceKmsAccess.fromMap(Map<String, dynamic> map) {
    return NetworkManagedServiceKmsAccess(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      ipv4Addresses: pulumi.Input.fromValue((map['ipv4Addresses'] as List).cast<String>()),
      kmsPolicyDocument: pulumi.Input.fromValue(map['kmsPolicyDocument'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
