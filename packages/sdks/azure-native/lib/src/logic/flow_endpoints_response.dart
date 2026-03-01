// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_address_response.dart';

/// The flow endpoints configuration.
class FlowEndpointsResponse {
  /// The access endpoint ip address.
  final List<IpAddressResponse>? accessEndpointIpAddresses;
  /// The outgoing ip address.
  final List<IpAddressResponse>? outgoingIpAddresses;

  /// Creates a new [FlowEndpointsResponse].
  /// [accessEndpointIpAddresses] The access endpoint ip address.
  /// [outgoingIpAddresses] The outgoing ip address.
  FlowEndpointsResponse({
    this.accessEndpointIpAddresses,
    this.outgoingIpAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessEndpointIpAddresses': ?accessEndpointIpAddresses == null ? null : pulumi.Input.encodeList<IpAddressResponse, Map<String, dynamic>>(accessEndpointIpAddresses!, (value) => value.toMap()),
      'outgoingIpAddresses': ?outgoingIpAddresses == null ? null : pulumi.Input.encodeList<IpAddressResponse, Map<String, dynamic>>(outgoingIpAddresses!, (value) => value.toMap()),
    };
  }

  factory FlowEndpointsResponse.fromMap(Map<String, dynamic> map) {
    return FlowEndpointsResponse(
      accessEndpointIpAddresses: map['accessEndpointIpAddresses'] == null ? null : pulumi.Input.decodeList<IpAddressResponse>(map['accessEndpointIpAddresses'], (value) => IpAddressResponse.fromMap((value as Map).cast<String, dynamic>())),
      outgoingIpAddresses: map['outgoingIpAddresses'] == null ? null : pulumi.Input.decodeList<IpAddressResponse>(map['outgoingIpAddresses'], (value) => IpAddressResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

