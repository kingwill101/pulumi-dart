// ignore_for_file: unused_element, unnecessary_cast


class NetworkManagedServiceS3Access {
  final String domainName;
  final List<String> ipv4Addresses;
  /// Specifies the endpoint policy for Amazon S3 access from the ODB network.
  final String s3PolicyDocument;
  /// The status of the network resource.
  final String status;

  /// Creates a new [NetworkManagedServiceS3Access].
  /// [domainName] Required.
  /// [ipv4Addresses] Required.
  /// [s3PolicyDocument] Specifies the endpoint policy for Amazon S3 access from the ODB network.
  /// [status] The status of the network resource.
  NetworkManagedServiceS3Access({
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
      domainName: map['domainName'] as String,
      ipv4Addresses: (map['ipv4Addresses'] as List).cast<String>(),
      s3PolicyDocument: map['s3PolicyDocument'] as String,
      status: map['status'] as String,
    );
  }
}

