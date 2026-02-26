// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../endpoint_access_vpc_endpoint_network_interface/endpoint_access_vpc_endpoint_network_interface2.dart';

class EndpointAccessVpcEndpoint2 {
  /// The network interfaces of the endpoint.. See `Network Interface` below.
  final List<EndpointAccessVpcEndpointNetworkInterface2>? networkInterfaces;

  /// The DNS address of the VPC endpoint.
  final String? vpcEndpointId;

  /// The port that Amazon Redshift Serverless listens on.
  final String? vpcId;

  EndpointAccessVpcEndpoint2({
    this.networkInterfaces,
    this.vpcEndpointId,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final networkInterfacesValue = networkInterfaces;
    if (networkInterfacesValue != null) {
      map['networkInterfaces'] = Input.encodeList<
              EndpointAccessVpcEndpointNetworkInterface2, Map<String, dynamic>>(
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

  factory EndpointAccessVpcEndpoint2.fromMap(Map<String, dynamic> map) {
    return EndpointAccessVpcEndpoint2(
      networkInterfaces: map['networkInterfaces'] == null
          ? null
          : Input.decodeList<EndpointAccessVpcEndpointNetworkInterface2>(
              map['networkInterfaces'],
              (value) => EndpointAccessVpcEndpointNetworkInterface2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      vpcEndpointId:
          map['vpcEndpointId'] == null ? null : map['vpcEndpointId'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}
