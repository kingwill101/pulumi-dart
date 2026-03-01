// ignore_for_file: unused_element, unnecessary_cast

class GetBrokerNodesNodeInfoList {
  /// Attached elastic network interface of the broker
  final String attachedEniId;

  /// ID of the broker
  final double brokerId;

  /// Client subnet to which this broker node belongs
  final String clientSubnet;

  /// The client virtual private cloud (VPC) IP address
  final String clientVpcIpAddress;

  /// Set of endpoints for accessing the broker. This does not include ports
  final List<String> endpoints;

  /// ARN of the node
  final String nodeArn;

  /// Creates a new [GetBrokerNodesNodeInfoList].
  /// [attachedEniId] Attached elastic network interface of the broker
  /// [brokerId] ID of the broker
  /// [clientSubnet] Client subnet to which this broker node belongs
  /// [clientVpcIpAddress] The client virtual private cloud (VPC) IP address
  /// [endpoints] Set of endpoints for accessing the broker. This does not include ports
  /// [nodeArn] ARN of the node
  GetBrokerNodesNodeInfoList({
    required this.attachedEniId,
    required this.brokerId,
    required this.clientSubnet,
    required this.clientVpcIpAddress,
    required this.endpoints,
    required this.nodeArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedEniId': attachedEniId,
      'brokerId': brokerId,
      'clientSubnet': clientSubnet,
      'clientVpcIpAddress': clientVpcIpAddress,
      'endpoints': endpoints,
      'nodeArn': nodeArn,
    };
  }

  factory GetBrokerNodesNodeInfoList.fromMap(Map<String, dynamic> map) {
    return GetBrokerNodesNodeInfoList(
      attachedEniId: map['attachedEniId'] as String,
      brokerId: map['brokerId'] as double,
      clientSubnet: map['clientSubnet'] as String,
      clientVpcIpAddress: map['clientVpcIpAddress'] as String,
      endpoints: (map['endpoints'] as List).cast<String>(),
      nodeArn: map['nodeArn'] as String,
    );
  }
}
