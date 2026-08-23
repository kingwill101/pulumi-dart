// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkManagedServiceS3Access {
  /// Domain name for which the DNS queries are forwarded.
  final pulumi.Input<String> domainName;
  /// List of IPv4 addresses for the Amazon STS access.
  final pulumi.Input<List<String>> ipv4Addresses;
  /// Endpoint policy for Amazon S3 access from the ODB network.
  final pulumi.Input<String> s3PolicyDocument;
  /// Status of the Zero-ETL access.
  final pulumi.Input<String> status;

  /// Creates a new [NetworkManagedServiceS3Access].
  /// [domainName] Domain name for which the DNS queries are forwarded.
  /// [ipv4Addresses] List of IPv4 addresses for the Amazon STS access.
  /// [s3PolicyDocument] Endpoint policy for Amazon S3 access from the ODB network.
  /// [status] Status of the Zero-ETL access.
  const NetworkManagedServiceS3Access({
    required this.domainName,
    required this.ipv4Addresses,
    required this.s3PolicyDocument,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'ipv4Addresses': ipv4Addresses,
      's3PolicyDocument': s3PolicyDocument,
      'status': status,
    };
  }

  factory NetworkManagedServiceS3Access.fromMap(Map<String, dynamic> map) {
    return NetworkManagedServiceS3Access(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      ipv4Addresses: pulumi.Input.fromValue((map['ipv4Addresses'] as List).cast<String>()),
      s3PolicyDocument: pulumi.Input.fromValue(map['s3PolicyDocument'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
