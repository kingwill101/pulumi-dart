// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_workgroup_endpoint_vpc_endpoint_network_interface/get_workgroup_endpoint_vpc_endpoint_network_interface.dart';

class GetWorkgroupEndpointVpcEndpoint {
  /// The network interfaces of the endpoint.. See `Network Interface` below.
  final List<GetWorkgroupEndpointVpcEndpointNetworkInterface> networkInterfaces;

  /// The DNS address of the VPC endpoint.
  final String vpcEndpointId;

  /// The port that Amazon Redshift Serverless listens on.
  final String vpcId;

  GetWorkgroupEndpointVpcEndpoint({
    required this.networkInterfaces,
    required this.vpcEndpointId,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkInterfaces'] = pulumi.Input.encodeList<
        GetWorkgroupEndpointVpcEndpointNetworkInterface,
        Map<String, dynamic>>(networkInterfaces, (value) => value.toMap());
    map['vpcEndpointId'] = vpcEndpointId;
    map['vpcId'] = vpcId;
    return map;
  }

  factory GetWorkgroupEndpointVpcEndpoint.fromMap(Map<String, dynamic> map) {
    return GetWorkgroupEndpointVpcEndpoint(
      networkInterfaces: pulumi.Input.decodeList<
              GetWorkgroupEndpointVpcEndpointNetworkInterface>(
          map['networkInterfaces'],
          (value) => GetWorkgroupEndpointVpcEndpointNetworkInterface.fromMap(
              (value as Map).cast<String, dynamic>())),
      vpcEndpointId: map['vpcEndpointId'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}
