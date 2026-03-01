// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_address.dart';

/// The flow endpoints configuration.
class FlowEndpoints {
  /// The access endpoint ip address.
  final List<IpAddress>? accessEndpointIpAddresses;
  /// The outgoing ip address.
  final List<IpAddress>? outgoingIpAddresses;

  /// Creates a new [FlowEndpoints].
  /// [accessEndpointIpAddresses] The access endpoint ip address.
  /// [outgoingIpAddresses] The outgoing ip address.
  FlowEndpoints({
    this.accessEndpointIpAddresses,
    this.outgoingIpAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessEndpointIpAddresses': ?accessEndpointIpAddresses == null ? null : pulumi.Input.encodeList<IpAddress, Map<String, dynamic>>(accessEndpointIpAddresses!, (value) => value.toMap()),
      'outgoingIpAddresses': ?outgoingIpAddresses == null ? null : pulumi.Input.encodeList<IpAddress, Map<String, dynamic>>(outgoingIpAddresses!, (value) => value.toMap()),
    };
  }

  factory FlowEndpoints.fromMap(Map<String, dynamic> map) {
    return FlowEndpoints(
      accessEndpointIpAddresses: map['accessEndpointIpAddresses'] == null ? null : pulumi.Input.decodeList<IpAddress>(map['accessEndpointIpAddresses'], (value) => IpAddress.fromMap((value as Map).cast<String, dynamic>())),
      outgoingIpAddresses: map['outgoingIpAddresses'] == null ? null : pulumi.Input.decodeList<IpAddress>(map['outgoingIpAddresses'], (value) => IpAddress.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

