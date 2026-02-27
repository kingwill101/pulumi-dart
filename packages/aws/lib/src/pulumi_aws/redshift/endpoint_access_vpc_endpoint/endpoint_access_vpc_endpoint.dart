// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../endpoint_access_vpc_endpoint_network_interface/endpoint_access_vpc_endpoint_network_interface.dart';

class EndpointAccessVpcEndpoint {
  /// One or more network interfaces of the endpoint. Also known as an interface endpoint. See details below.
  final List<EndpointAccessVpcEndpointNetworkInterface>? networkInterfaces;

  /// The connection endpoint ID for connecting an Amazon Redshift cluster through the proxy.
  final String? vpcEndpointId;

  /// The VPC identifier that the endpoint is associated.
  final String? vpcId;

  EndpointAccessVpcEndpoint({
    this.networkInterfaces,
    this.vpcEndpointId,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final networkInterfacesValue = networkInterfaces;
    if (networkInterfacesValue != null) {
      map['networkInterfaces'] = pulumi.Input.encodeList<
              EndpointAccessVpcEndpointNetworkInterface, Map<String, dynamic>>(
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

  factory EndpointAccessVpcEndpoint.fromMap(Map<String, dynamic> map) {
    return EndpointAccessVpcEndpoint(
      networkInterfaces: map['networkInterfaces'] == null
          ? null
          : pulumi.Input.decodeList<EndpointAccessVpcEndpointNetworkInterface>(
              map['networkInterfaces'],
              (value) => EndpointAccessVpcEndpointNetworkInterface.fromMap(
                  (value as Map).cast<String, dynamic>())),
      vpcEndpointId:
          map['vpcEndpointId'] == null ? null : map['vpcEndpointId'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}
