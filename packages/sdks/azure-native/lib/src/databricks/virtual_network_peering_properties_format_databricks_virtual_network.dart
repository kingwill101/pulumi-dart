// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The remote virtual network should be in the same region. See here to learn more (https://docs.microsoft.com/en-us/azure/databricks/administration-guide/cloud-configurations/azure/vnet-peering).
class VirtualNetworkPeeringPropertiesFormatDatabricksVirtualNetwork {
  /// The Id of the databricks virtual network.
  final pulumi.Input<String>? id;

  /// Creates a new [VirtualNetworkPeeringPropertiesFormatDatabricksVirtualNetwork].
  /// [id] The Id of the databricks virtual network.
  VirtualNetworkPeeringPropertiesFormatDatabricksVirtualNetwork({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory VirtualNetworkPeeringPropertiesFormatDatabricksVirtualNetwork.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPeeringPropertiesFormatDatabricksVirtualNetwork(
      id: map['id'] == null ? null : (map['id'] as String).input(),
    );
  }
}

