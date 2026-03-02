// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network access control rules for the endpoints.
class DataCollectionEndpointNetworkAcls {
  /// The configuration to set whether network access from public internet to the endpoints are allowed.
  final pulumi.Input<String>? publicNetworkAccess;

  /// Creates a new [DataCollectionEndpointNetworkAcls].
  /// [publicNetworkAccess] The configuration to set whether network access from public internet to the endpoints are allowed.
  DataCollectionEndpointNetworkAcls({
    this.publicNetworkAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicNetworkAccess': ?publicNetworkAccess,
    };
  }

  factory DataCollectionEndpointNetworkAcls.fromMap(Map<String, dynamic> map) {
    return DataCollectionEndpointNetworkAcls(
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess'] as String).input(),
    );
  }
}

