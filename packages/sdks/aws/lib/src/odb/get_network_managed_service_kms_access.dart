// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkManagedServiceKmsAccess {
  final pulumi.Input<String> domainName;
  final pulumi.Input<List<String>> ipv4Addresses;
  final pulumi.Input<String> kmsPolicyDocument;
  /// The status of the network resource.
  final pulumi.Input<String> status;

  /// Creates a new [GetNetworkManagedServiceKmsAccess].
  /// [domainName] Required.
  /// [ipv4Addresses] Required.
  /// [kmsPolicyDocument] Required.
  /// [status] The status of the network resource.
  GetNetworkManagedServiceKmsAccess({
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

  factory GetNetworkManagedServiceKmsAccess.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagedServiceKmsAccess(
      domainName: (map['domainName'] as String).input(),
      ipv4Addresses: ((map['ipv4Addresses'] as List).cast<String>()).input(),
      kmsPolicyDocument: (map['kmsPolicyDocument'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

