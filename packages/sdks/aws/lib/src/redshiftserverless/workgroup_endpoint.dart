// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workgroup_endpoint_vpc_endpoint.dart';

class WorkgroupEndpoint {
  /// The DNS address of the VPC endpoint.
  final pulumi.Input<String>? address;
  /// The port number on which the cluster accepts incoming connections.
  final pulumi.Input<int>? port;
  /// The VPC endpoint or the Redshift Serverless workgroup. See `VPC Endpoint` below.
  final pulumi.Input<List<WorkgroupEndpointVpcEndpoint>>? vpcEndpoints;

  /// Creates a new [WorkgroupEndpoint].
  /// [address] The DNS address of the VPC endpoint.
  /// [port] The port number on which the cluster accepts incoming connections.
  /// [vpcEndpoints] The VPC endpoint or the Redshift Serverless workgroup. See `VPC Endpoint` below.
  WorkgroupEndpoint({
    this.address,
    this.port,
    this.vpcEndpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'port': ?port,
      'vpcEndpoints': ?pulumi.Input.mapOptionalInputValue<List<WorkgroupEndpointVpcEndpoint>, List<Map<String, dynamic>>>(vpcEndpoints, (value) => pulumi.Input.encodeList<WorkgroupEndpointVpcEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkgroupEndpoint.fromMap(Map<String, dynamic> map) {
    return WorkgroupEndpoint(
      address: map['address'] == null ? null : ((map['address'] as String).input()).input(),
      port: map['port'] == null ? null : ((map['port'] as int).input()).input(),
      vpcEndpoints: map['vpcEndpoints'] == null ? null : ((pulumi.Input.decodeList<WorkgroupEndpointVpcEndpoint>(map['vpcEndpoints']!, (value) => WorkgroupEndpointVpcEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

