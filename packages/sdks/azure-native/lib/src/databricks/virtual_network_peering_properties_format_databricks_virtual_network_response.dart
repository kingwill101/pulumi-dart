// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The remote virtual network should be in the same region. See here to learn more (https://docs.microsoft.com/en-us/azure/databricks/administration-guide/cloud-configurations/azure/vnet-peering).
class VirtualNetworkPeeringPropertiesFormatDatabricksVirtualNetworkResponse {
  /// The Id of the databricks virtual network.
  final pulumi.Input<String>? id;

  /// Creates a new [VirtualNetworkPeeringPropertiesFormatDatabricksVirtualNetworkResponse].
  /// [id] The Id of the databricks virtual network.
  const VirtualNetworkPeeringPropertiesFormatDatabricksVirtualNetworkResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory VirtualNetworkPeeringPropertiesFormatDatabricksVirtualNetworkResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPeeringPropertiesFormatDatabricksVirtualNetworkResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
