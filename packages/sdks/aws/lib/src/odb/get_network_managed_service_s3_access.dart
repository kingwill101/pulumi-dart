// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkManagedServiceS3Access {
  final pulumi.Input<String> domainName;
  final pulumi.Input<List<String>> ipv4Addresses;
  final pulumi.Input<String> s3PolicyDocument;
  /// The status of the network resource.
  final pulumi.Input<String> status;

  /// Creates a new [GetNetworkManagedServiceS3Access].
  /// [domainName] Required.
  /// [ipv4Addresses] Required.
  /// [s3PolicyDocument] Required.
  /// [status] The status of the network resource.
  GetNetworkManagedServiceS3Access({
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

  factory GetNetworkManagedServiceS3Access.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagedServiceS3Access(
      domainName: (map['domainName'] as String).input(),
      ipv4Addresses: ((map['ipv4Addresses'] as List).cast<String>()).input(),
      s3PolicyDocument: (map['s3PolicyDocument'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

