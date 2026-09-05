// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBrokerNodesNodeInfoList {
  /// Attached elastic network interface of the broker
  final pulumi.Input<String> attachedEniId;
  /// ID of the broker
  final pulumi.Input<double> brokerId;
  /// Client subnet to which this broker node belongs
  final pulumi.Input<String> clientSubnet;
  /// Client VPC IP address
  final pulumi.Input<String> clientVpcIpAddress;
  /// Set of endpoints for accessing the broker. This does not include ports
  final pulumi.Input<List<String>> endpoints;
  /// ARN of the node
  final pulumi.Input<String> nodeArn;

  /// Creates a new [GetBrokerNodesNodeInfoList].
  /// [attachedEniId] Attached elastic network interface of the broker
  /// [brokerId] ID of the broker
  /// [clientSubnet] Client subnet to which this broker node belongs
  /// [clientVpcIpAddress] Client VPC IP address
  /// [endpoints] Set of endpoints for accessing the broker. This does not include ports
  /// [nodeArn] ARN of the node
  const GetBrokerNodesNodeInfoList({
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
      attachedEniId: pulumi.Input.fromValue(map['attachedEniId'] as String),
      brokerId: pulumi.Input.fromValue((map['brokerId'] as num).toDouble()),
      clientSubnet: pulumi.Input.fromValue(map['clientSubnet'] as String),
      clientVpcIpAddress: pulumi.Input.fromValue(map['clientVpcIpAddress'] as String),
      endpoints: pulumi.Input.fromValue((map['endpoints'] as List).cast<String>()),
      nodeArn: pulumi.Input.fromValue(map['nodeArn'] as String),
    );
  }
}
