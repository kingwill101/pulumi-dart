// ignore_for_file: unused_element, unnecessary_cast

/// Network configuration for a Data Fusion instance. These configurations are used for peering with the customer network. Configurations are optional when a public Data Fusion instance is to be created. However, providing these configurations allows several benefits, such as reduced network latency while accessing the customer resources from managed Data Fusion instance nodes, as well as access to the customer on-prem resources.
class NetworkConfigResponseDatafusionV1 {
  /// The IP range in CIDR notation to use for the managed Data Fusion instance nodes. This range must not overlap with any other ranges used in the customer network.
  final String ipAllocation;

  /// Name of the network in the customer project with which the Tenant Project will be peered for executing pipelines. In case of shared VPC where the network resides in another host project the network should specified in the form of projects/{host-project-id}/global/networks/{network}
  final String network;

  NetworkConfigResponseDatafusionV1({
    required this.ipAllocation,
    required this.network,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipAllocation'] = ipAllocation;
    map['network'] = network;
    return map;
  }

  factory NetworkConfigResponseDatafusionV1.fromMap(Map<String, dynamic> map) {
    return NetworkConfigResponseDatafusionV1(
      ipAllocation: map['ipAllocation'] as String,
      network: map['network'] as String,
    );
  }
}
