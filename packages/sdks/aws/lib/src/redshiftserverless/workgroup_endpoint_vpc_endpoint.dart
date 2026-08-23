// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workgroup_endpoint_vpc_endpoint_network_interface.dart';

class WorkgroupEndpointVpcEndpoint {
  /// The network interfaces of the endpoint.. See `Network Interface` below.
  final pulumi.Input<List<WorkgroupEndpointVpcEndpointNetworkInterface>>? networkInterfaces;
  /// The DNS address of the VPC endpoint.
  final pulumi.Input<String>? vpcEndpointId;
  /// The port that Amazon Redshift Serverless listens on.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [WorkgroupEndpointVpcEndpoint].
  /// [networkInterfaces] The network interfaces of the endpoint.. See `Network Interface` below.
  /// [vpcEndpointId] The DNS address of the VPC endpoint.
  /// [vpcId] The port that Amazon Redshift Serverless listens on.
  const WorkgroupEndpointVpcEndpoint({
    this.networkInterfaces,
    this.vpcEndpointId,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<WorkgroupEndpointVpcEndpointNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<WorkgroupEndpointVpcEndpointNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcEndpointId': ?vpcEndpointId,
      'vpcId': ?vpcId,
    };
  }

  factory WorkgroupEndpointVpcEndpoint.fromMap(Map<String, dynamic> map) {
    return WorkgroupEndpointVpcEndpoint(
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkgroupEndpointVpcEndpointNetworkInterface>(guardedValue, (value) => WorkgroupEndpointVpcEndpointNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpcEndpointId: (() { final guardedValue = map['vpcEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
