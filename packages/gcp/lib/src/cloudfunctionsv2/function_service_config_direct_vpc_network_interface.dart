// ignore_for_file: unused_element, unnecessary_cast


class FunctionServiceConfigDirectVpcNetworkInterface {
  /// The name of the VPC network to which the function will be connected. Specify either a VPC network or a subnet, or both. If you specify only a network, the subnet uses the same name as the network.
  final String? network;
  /// The name of the VPC subnetwork that the Cloud Function resource will get IPs from. Specify either a VPC network or a subnet, or both. If both network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If subnetwork is not specified, the subnetwork with the same name with the network will be used.
  final String? subnetwork;
  /// Network tags applied to this Cloud Function resource.
  final List<String>? tags;

  /// Creates a new [FunctionServiceConfigDirectVpcNetworkInterface].
  /// [network] The name of the VPC network to which the function will be connected. Specify either a VPC network or a subnet, or both. If you specify only a network, the subnet uses the same name as the network.
  /// [subnetwork] The name of the VPC subnetwork that the Cloud Function resource will get IPs from. Specify either a VPC network or a subnet, or both. If both network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If subnetwork is not specified, the subnetwork with the same name with the network will be used.
  /// [tags] Network tags applied to this Cloud Function resource.
  FunctionServiceConfigDirectVpcNetworkInterface({
    this.network,
    this.subnetwork,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': ?network,
      'subnetwork': ?subnetwork,
      'tags': ?tags,
    };
  }

  factory FunctionServiceConfigDirectVpcNetworkInterface.fromMap(Map<String, dynamic> map) {
    return FunctionServiceConfigDirectVpcNetworkInterface(
      network: map['network'] == null ? null : map['network'] as String,
      subnetwork: map['subnetwork'] == null ? null : map['subnetwork'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}

