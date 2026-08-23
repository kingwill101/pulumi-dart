// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkManagedServiceStsAccess {
  /// Domain name for which the DNS queries are forwarded.
  final pulumi.Input<String> domainName;
  /// List of IPv4 addresses for the Amazon STS access.
  final pulumi.Input<List<String>> ipv4Addresses;
  /// Status of the Zero-ETL access.
  final pulumi.Input<String> status;
  /// Endpoint policy for STS access from the ODB network.
  final pulumi.Input<String> stsPolicyDocument;

  /// Creates a new [NetworkManagedServiceStsAccess].
  /// [domainName] Domain name for which the DNS queries are forwarded.
  /// [ipv4Addresses] List of IPv4 addresses for the Amazon STS access.
  /// [status] Status of the Zero-ETL access.
  /// [stsPolicyDocument] Endpoint policy for STS access from the ODB network.
  const NetworkManagedServiceStsAccess({
    required this.domainName,
    required this.ipv4Addresses,
    required this.status,
    required this.stsPolicyDocument,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'ipv4Addresses': ipv4Addresses,
      'status': status,
      'stsPolicyDocument': stsPolicyDocument,
    };
  }

  factory NetworkManagedServiceStsAccess.fromMap(Map<String, dynamic> map) {
    return NetworkManagedServiceStsAccess(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      ipv4Addresses: pulumi.Input.fromValue((map['ipv4Addresses'] as List).cast<String>()),
      status: pulumi.Input.fromValue(map['status'] as String),
      stsPolicyDocument: pulumi.Input.fromValue(map['stsPolicyDocument'] as String),
    );
  }
}
