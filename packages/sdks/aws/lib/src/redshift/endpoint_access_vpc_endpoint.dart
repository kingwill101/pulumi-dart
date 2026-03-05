// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_access_vpc_endpoint_network_interface.dart';

class EndpointAccessVpcEndpoint {
  /// One or more network interfaces of the endpoint. Also known as an interface endpoint. See details below.
  final pulumi.Input<List<EndpointAccessVpcEndpointNetworkInterface>>? networkInterfaces;
  /// The connection endpoint ID for connecting an Amazon Redshift cluster through the proxy.
  final pulumi.Input<String>? vpcEndpointId;
  /// The VPC identifier that the endpoint is associated.
  final pulumi.Input<String>? vpcId;

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
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<EndpointAccessVpcEndpointNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<EndpointAccessVpcEndpointNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcEndpointId': ?vpcEndpointId,
      'vpcId': ?vpcId,
    };
  }

  factory EndpointAccessVpcEndpoint.fromMap(Map<String, dynamic> map) {
    return EndpointAccessVpcEndpoint(
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointAccessVpcEndpointNetworkInterface>(guardedValue, (value) => EndpointAccessVpcEndpointNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpcEndpointId: (() { final guardedValue = map['vpcEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

