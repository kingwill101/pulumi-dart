// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../endpoint_access_vpc_endpoint_network_interface/endpoint_access_vpc_endpoint_network_interface_redshiftserverless.dart';

class EndpointAccessVpcEndpointRedshiftserverless {
  /// The network interfaces of the endpoint.. See `Network Interface` below.
  final List<EndpointAccessVpcEndpointNetworkInterfaceRedshiftserverless>?
      networkInterfaces;

  /// The DNS address of the VPC endpoint.
  final String? vpcEndpointId;

  /// The port that Amazon Redshift Serverless listens on.
  final String? vpcId;

  EndpointAccessVpcEndpointRedshiftserverless({
    this.networkInterfaces,
    this.vpcEndpointId,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final networkInterfacesValue = networkInterfaces;
    if (networkInterfacesValue != null) {
      map['networkInterfaces'] = pulumi.Input.encodeList<
              EndpointAccessVpcEndpointNetworkInterfaceRedshiftserverless,
              Map<String, dynamic>>(
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

  factory EndpointAccessVpcEndpointRedshiftserverless.fromMap(
      Map<String, dynamic> map) {
    return EndpointAccessVpcEndpointRedshiftserverless(
      networkInterfaces: map['networkInterfaces'] == null
          ? null
          : pulumi.Input.decodeList<
                  EndpointAccessVpcEndpointNetworkInterfaceRedshiftserverless>(
              map['networkInterfaces'],
              (value) =>
                  EndpointAccessVpcEndpointNetworkInterfaceRedshiftserverless
                      .fromMap((value as Map).cast<String, dynamic>())),
      vpcEndpointId:
          map['vpcEndpointId'] == null ? null : map['vpcEndpointId'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}
