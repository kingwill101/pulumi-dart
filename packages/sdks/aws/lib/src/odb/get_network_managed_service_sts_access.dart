// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkManagedServiceStsAccess {
  final pulumi.Input<String> domainName;
  final pulumi.Input<List<String>> ipv4Addresses;
  /// The status of the network resource.
  final pulumi.Input<String> status;
  final pulumi.Input<String> stsPolicyDocument;

  /// Creates a new [GetNetworkManagedServiceStsAccess].
  /// [domainName] Required.
  /// [ipv4Addresses] Required.
  /// [status] The status of the network resource.
  /// [stsPolicyDocument] Required.
  const GetNetworkManagedServiceStsAccess({
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

  factory GetNetworkManagedServiceStsAccess.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagedServiceStsAccess(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      ipv4Addresses: pulumi.Input.fromValue((map['ipv4Addresses'] as List).cast<String>()),
      status: pulumi.Input.fromValue(map['status'] as String),
      stsPolicyDocument: pulumi.Input.fromValue(map['stsPolicyDocument'] as String),
    );
  }
}

