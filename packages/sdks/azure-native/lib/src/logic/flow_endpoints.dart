// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_address.dart';

/// The flow endpoints configuration.
class FlowEndpoints {
  /// The access endpoint ip address.
  final pulumi.Input<List<IpAddress>>? accessEndpointIpAddresses;
  /// The outgoing ip address.
  final pulumi.Input<List<IpAddress>>? outgoingIpAddresses;

  /// Creates a new [FlowEndpoints].
  /// [accessEndpointIpAddresses] The access endpoint ip address.
  /// [outgoingIpAddresses] The outgoing ip address.
  const FlowEndpoints({
    this.accessEndpointIpAddresses,
    this.outgoingIpAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessEndpointIpAddresses': ?pulumi.Input.mapOptionalInputValue<List<IpAddress>, List<Map<String, dynamic>>>(accessEndpointIpAddresses, (value) => pulumi.Input.encodeList<IpAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outgoingIpAddresses': ?pulumi.Input.mapOptionalInputValue<List<IpAddress>, List<Map<String, dynamic>>>(outgoingIpAddresses, (value) => pulumi.Input.encodeList<IpAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FlowEndpoints.fromMap(Map<String, dynamic> map) {
    return FlowEndpoints(
      accessEndpointIpAddresses: (() { final guardedValue = map['accessEndpointIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpAddress>(guardedValue, (value) => IpAddress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      outgoingIpAddresses: (() { final guardedValue = map['outgoingIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpAddress>(guardedValue, (value) => IpAddress.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
