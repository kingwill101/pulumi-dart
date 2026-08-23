// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_load_balancer_options_port_range.dart';

class EndpointLoadBalancerOptions {
  final pulumi.Input<String>? loadBalancerArn;
  final pulumi.Input<int>? port;
  final pulumi.Input<List<EndpointLoadBalancerOptionsPortRange>>? portRanges;
  final pulumi.Input<String>? protocol;
  final pulumi.Input<List<String>>? subnetIds;

  /// Creates a new [EndpointLoadBalancerOptions].
  /// [loadBalancerArn] Optional.
  /// [port] Optional.
  /// [portRanges] Optional.
  /// [protocol] Optional.
  /// [subnetIds] Optional.
  const EndpointLoadBalancerOptions({
    this.loadBalancerArn,
    this.port,
    this.portRanges,
    this.protocol,
    this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerArn': ?loadBalancerArn,
      'port': ?port,
      'portRanges': ?pulumi.Input.mapOptionalInputValue<List<EndpointLoadBalancerOptionsPortRange>, List<Map<String, dynamic>>>(portRanges, (value) => pulumi.Input.encodeList<EndpointLoadBalancerOptionsPortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocol': ?protocol,
      'subnetIds': ?subnetIds,
    };
  }

  factory EndpointLoadBalancerOptions.fromMap(Map<String, dynamic> map) {
    return EndpointLoadBalancerOptions(
      loadBalancerArn: (() { final guardedValue = map['loadBalancerArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      portRanges: (() { final guardedValue = map['portRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointLoadBalancerOptionsPortRange>(guardedValue, (value) => EndpointLoadBalancerOptionsPortRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
