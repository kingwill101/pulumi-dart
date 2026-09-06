// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network access control rules for the endpoints.
class DataCollectionEndpointResponseNetworkAcls {
  /// The configuration to set whether network access from public internet to the endpoints are allowed.
  final pulumi.Input<String?>? publicNetworkAccess;

  /// Creates a new [DataCollectionEndpointResponseNetworkAcls].
  /// [publicNetworkAccess] The configuration to set whether network access from public internet to the endpoints are allowed.
  const DataCollectionEndpointResponseNetworkAcls({
    this.publicNetworkAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicNetworkAccess': ?publicNetworkAccess,
    };
  }

  factory DataCollectionEndpointResponseNetworkAcls.fromMap(Map<String, dynamic> map) {
    return DataCollectionEndpointResponseNetworkAcls(
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
