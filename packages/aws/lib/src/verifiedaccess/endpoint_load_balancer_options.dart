// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_load_balancer_options_port_range.dart';

class EndpointLoadBalancerOptions {
  final String? loadBalancerArn;
  final int? port;
  final List<EndpointLoadBalancerOptionsPortRange>? portRanges;
  final String? protocol;
  final List<String>? subnetIds;

  /// Creates a new [EndpointLoadBalancerOptions].
  /// [loadBalancerArn] Optional.
  /// [port] Optional.
  /// [portRanges] Optional.
  /// [protocol] Optional.
  /// [subnetIds] Optional.
  EndpointLoadBalancerOptions({
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
      'portRanges': ?portRanges == null ? null : pulumi.Input.encodeList<EndpointLoadBalancerOptionsPortRange, Map<String, dynamic>>(portRanges!, (value) => value.toMap()),
      'protocol': ?protocol,
      'subnetIds': ?subnetIds,
    };
  }

  factory EndpointLoadBalancerOptions.fromMap(Map<String, dynamic> map) {
    return EndpointLoadBalancerOptions(
      loadBalancerArn: map['loadBalancerArn'] == null ? null : map['loadBalancerArn'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      portRanges: map['portRanges'] == null ? null : pulumi.Input.decodeList<EndpointLoadBalancerOptionsPortRange>(map['portRanges'], (value) => EndpointLoadBalancerOptionsPortRange.fromMap((value as Map).cast<String, dynamic>())),
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      subnetIds: map['subnetIds'] == null ? null : (map['subnetIds'] as List).cast<String>(),
    );
  }
}

