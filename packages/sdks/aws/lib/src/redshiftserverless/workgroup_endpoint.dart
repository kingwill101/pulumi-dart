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
  const WorkgroupEndpoint({
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
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vpcEndpoints: (() { final guardedValue = map['vpcEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkgroupEndpointVpcEndpoint>(guardedValue, (value) => WorkgroupEndpointVpcEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

