// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workgroup_endpoint_vpc_endpoint.dart';

class GetWorkgroupEndpoint {
  /// The DNS address of the VPC endpoint.
  final String address;
  /// The port that Amazon Redshift Serverless listens on.
  final int port;
  /// The VPC endpoint or the Redshift Serverless workgroup. See `VPC Endpoint` below.
  final List<GetWorkgroupEndpointVpcEndpoint> vpcEndpoints;

  /// Creates a new [GetWorkgroupEndpoint].
  /// [address] The DNS address of the VPC endpoint.
  /// [port] The port that Amazon Redshift Serverless listens on.
  /// [vpcEndpoints] The VPC endpoint or the Redshift Serverless workgroup. See `VPC Endpoint` below.
  GetWorkgroupEndpoint({
    required this.address,
    required this.port,
    required this.vpcEndpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'port': port,
      'vpcEndpoints': pulumi.Input.encodeList<GetWorkgroupEndpointVpcEndpoint, Map<String, dynamic>>(vpcEndpoints, (value) => value.toMap()),
    };
  }

  factory GetWorkgroupEndpoint.fromMap(Map<String, dynamic> map) {
    return GetWorkgroupEndpoint(
      address: map['address'] as String,
      port: map['port'] as int,
      vpcEndpoints: pulumi.Input.decodeList<GetWorkgroupEndpointVpcEndpoint>(map['vpcEndpoints'], (value) => GetWorkgroupEndpointVpcEndpoint.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

