// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../workgroup_endpoint_vpc_endpoint/workgroup_endpoint_vpc_endpoint.dart';

class WorkgroupEndpoint {
  /// The DNS address of the VPC endpoint.
  final String? address;

  /// The port number on which the cluster accepts incoming connections.
  final int? port;

  /// The VPC endpoint or the Redshift Serverless workgroup. See `VPC Endpoint` below.
  final List<WorkgroupEndpointVpcEndpoint>? vpcEndpoints;

  WorkgroupEndpoint({
    this.address,
    this.port,
    this.vpcEndpoints,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addressValue = address;
    if (addressValue != null) {
      map['address'] = addressValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final vpcEndpointsValue = vpcEndpoints;
    if (vpcEndpointsValue != null) {
      map['vpcEndpoints'] =
          Input.encodeList<WorkgroupEndpointVpcEndpoint, Map<String, dynamic>>(
              vpcEndpointsValue, (value) => value.toMap());
    }
    return map;
  }

  factory WorkgroupEndpoint.fromMap(Map<String, dynamic> map) {
    return WorkgroupEndpoint(
      address: map['address'] == null ? null : map['address'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      vpcEndpoints: map['vpcEndpoints'] == null
          ? null
          : Input.decodeList<WorkgroupEndpointVpcEndpoint>(
              map['vpcEndpoints'],
              (value) => WorkgroupEndpointVpcEndpoint.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
