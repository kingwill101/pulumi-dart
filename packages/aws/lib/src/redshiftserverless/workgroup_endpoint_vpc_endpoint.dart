// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workgroup_endpoint_vpc_endpoint_network_interface.dart';

class WorkgroupEndpointVpcEndpoint {
  /// The network interfaces of the endpoint.. See `Network Interface` below.
  final List<WorkgroupEndpointVpcEndpointNetworkInterface>? networkInterfaces;

  /// The DNS address of the VPC endpoint.
  final String? vpcEndpointId;

  /// The port that Amazon Redshift Serverless listens on.
  final String? vpcId;

  /// Creates a new [WorkgroupEndpointVpcEndpoint].
  /// [networkInterfaces] The network interfaces of the endpoint.. See `Network Interface` below.
  /// [vpcEndpointId] The DNS address of the VPC endpoint.
  /// [vpcId] The port that Amazon Redshift Serverless listens on.
  WorkgroupEndpointVpcEndpoint({
    this.networkInterfaces,
    this.vpcEndpointId,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final networkInterfacesValue = networkInterfaces;
    if (networkInterfacesValue != null) {
      map['networkInterfaces'] = pulumi.Input.encodeList<
              WorkgroupEndpointVpcEndpointNetworkInterface,
              Map<String, dynamic>>(
          networkInterfacesValue, (value) => value.toMap());
    }
    final vpcEndpointIdValue = vpcEndpointId;
    if (vpcEndpointIdValue != null) {
      map['vpcEndpointId'] = vpcEndpointIdValue;
    }
    final vpcIdValue = vpcId;
    if (vpcIdValue != null) {
      map['vpcId'] = vpcIdValue;
    }
    return map;
  }

  factory WorkgroupEndpointVpcEndpoint.fromMap(Map<String, dynamic> map) {
    return WorkgroupEndpointVpcEndpoint(
      networkInterfaces: map['networkInterfaces'] == null
          ? null
          : pulumi.Input.decodeList<
                  WorkgroupEndpointVpcEndpointNetworkInterface>(
              map['networkInterfaces'],
              (value) => WorkgroupEndpointVpcEndpointNetworkInterface.fromMap(
                  (value as Map).cast<String, dynamic>())),
      vpcEndpointId:
          map['vpcEndpointId'] == null ? null : map['vpcEndpointId'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}
