// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_access_vpc_endpoint_network_interface.dart';

class EndpointAccessVpcEndpoint {
  /// The network interfaces of the endpoint.. See `Network Interface` below.
  final List<EndpointAccessVpcEndpointNetworkInterface>? networkInterfaces;
  /// The DNS address of the VPC endpoint.
  final String? vpcEndpointId;
  /// The port that Amazon Redshift Serverless listens on.
  final String? vpcId;

  /// Creates a new [EndpointAccessVpcEndpoint].
  /// [networkInterfaces] The network interfaces of the endpoint.. See `Network Interface` below.
  /// [vpcEndpointId] The DNS address of the VPC endpoint.
  /// [vpcId] The port that Amazon Redshift Serverless listens on.
  EndpointAccessVpcEndpoint({
    this.networkInterfaces,
    this.vpcEndpointId,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaces': ?networkInterfaces == null ? null : pulumi.Input.encodeList<EndpointAccessVpcEndpointNetworkInterface, Map<String, dynamic>>(networkInterfaces!, (value) => value.toMap()),
      'vpcEndpointId': ?vpcEndpointId,
      'vpcId': ?vpcId,
    };
  }

  factory EndpointAccessVpcEndpoint.fromMap(Map<String, dynamic> map) {
    return EndpointAccessVpcEndpoint(
      networkInterfaces: map['networkInterfaces'] == null ? null : pulumi.Input.decodeList<EndpointAccessVpcEndpointNetworkInterface>(map['networkInterfaces'], (value) => EndpointAccessVpcEndpointNetworkInterface.fromMap((value as Map).cast<String, dynamic>())),
      vpcEndpointId: map['vpcEndpointId'] == null ? null : map['vpcEndpointId'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

