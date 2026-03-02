// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workgroup_endpoint_vpc_endpoint_network_interface.dart';

class GetWorkgroupEndpointVpcEndpoint {
  /// The network interfaces of the endpoint.. See `Network Interface` below.
  final pulumi.Input<List<GetWorkgroupEndpointVpcEndpointNetworkInterface>> networkInterfaces;
  /// The DNS address of the VPC endpoint.
  final pulumi.Input<String> vpcEndpointId;
  /// The port that Amazon Redshift Serverless listens on.
  final pulumi.Input<String> vpcId;

  /// Creates a new [GetWorkgroupEndpointVpcEndpoint].
  /// [networkInterfaces] The network interfaces of the endpoint.. See `Network Interface` below.
  /// [vpcEndpointId] The DNS address of the VPC endpoint.
  /// [vpcId] The port that Amazon Redshift Serverless listens on.
  GetWorkgroupEndpointVpcEndpoint({
    required this.networkInterfaces,
    required this.vpcEndpointId,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaces': pulumi.Input.mapInputValue<List<GetWorkgroupEndpointVpcEndpointNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<GetWorkgroupEndpointVpcEndpointNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcEndpointId': vpcEndpointId,
      'vpcId': vpcId,
    };
  }

  factory GetWorkgroupEndpointVpcEndpoint.fromMap(Map<String, dynamic> map) {
    return GetWorkgroupEndpointVpcEndpoint(
      networkInterfaces: (pulumi.Input.decodeList<GetWorkgroupEndpointVpcEndpointNetworkInterface>(map['networkInterfaces']!, (value) => GetWorkgroupEndpointVpcEndpointNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpcEndpointId: (map['vpcEndpointId'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
    );
  }
}

