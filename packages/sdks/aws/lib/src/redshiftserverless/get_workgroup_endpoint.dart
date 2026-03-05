// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workgroup_endpoint_vpc_endpoint.dart';

class GetWorkgroupEndpoint {
  /// The DNS address of the VPC endpoint.
  final pulumi.Input<String> address;
  /// The port that Amazon Redshift Serverless listens on.
  final pulumi.Input<int> port;
  /// The VPC endpoint or the Redshift Serverless workgroup. See `VPC Endpoint` below.
  final pulumi.Input<List<GetWorkgroupEndpointVpcEndpoint>> vpcEndpoints;

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
      'vpcEndpoints': pulumi.Input.mapInputValue<List<GetWorkgroupEndpointVpcEndpoint>, List<Map<String, dynamic>>>(vpcEndpoints, (value) => pulumi.Input.encodeList<GetWorkgroupEndpointVpcEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetWorkgroupEndpoint.fromMap(Map<String, dynamic> map) {
    return GetWorkgroupEndpoint(
      address: pulumi.Input.fromValue(map['address'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      vpcEndpoints: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkgroupEndpointVpcEndpoint>(map['vpcEndpoints']!, (value) => GetWorkgroupEndpointVpcEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

