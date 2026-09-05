// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_access_vpc_endpoint_network_interface.dart';

class EndpointAccessVpcEndpoint {
  /// The network interfaces of the endpoint.. See `Network Interface` below.
  final pulumi.Input<List<EndpointAccessVpcEndpointNetworkInterface>?>? networkInterfaces;
  /// The DNS address of the VPC endpoint.
  final pulumi.Input<String?>? vpcEndpointId;
  /// The port that Amazon Redshift Serverless listens on.
  final pulumi.Input<String?>? vpcId;

  /// Creates a new [EndpointAccessVpcEndpoint].
  /// [networkInterfaces] The network interfaces of the endpoint.. See `Network Interface` below.
  /// [vpcEndpointId] The DNS address of the VPC endpoint.
  /// [vpcId] The port that Amazon Redshift Serverless listens on.
  const EndpointAccessVpcEndpoint({
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
