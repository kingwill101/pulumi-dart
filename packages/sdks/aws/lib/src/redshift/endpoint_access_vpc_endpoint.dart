// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_access_vpc_endpoint_network_interface.dart';

class EndpointAccessVpcEndpoint {
  /// One or more network interfaces of the endpoint. Also known as an interface endpoint. See details below.
  final List<EndpointAccessVpcEndpointNetworkInterface>? networkInterfaces;
  /// The connection endpoint ID for connecting an Amazon Redshift cluster through the proxy.
  final String? vpcEndpointId;
  /// The VPC identifier that the endpoint is associated.
  final String? vpcId;

  /// Creates a new [EndpointAccessVpcEndpoint].
  /// [networkInterfaces] One or more network interfaces of the endpoint. Also known as an interface endpoint. See details below.
  /// [vpcEndpointId] The connection endpoint ID for connecting an Amazon Redshift cluster through the proxy.
  /// [vpcId] The VPC identifier that the endpoint is associated.
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

