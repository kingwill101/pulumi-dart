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
      'portRanges': ?pulumi.Input.mapOptionalInputValue<List<EndpointLoadBalancerOptionsPortRange>, List<Map<String, dynamic>>>(portRanges, (value) => pulumi.Input.encodeList<EndpointLoadBalancerOptionsPortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocol': ?protocol,
      'subnetIds': ?subnetIds,
    };
  }

  factory EndpointLoadBalancerOptions.fromMap(Map<String, dynamic> map) {
    return EndpointLoadBalancerOptions(
      loadBalancerArn: map['loadBalancerArn'] == null ? null : ((map['loadBalancerArn'] as String).input()).input(),
      port: map['port'] == null ? null : ((map['port'] as int).input()).input(),
      portRanges: map['portRanges'] == null ? null : ((pulumi.Input.decodeList<EndpointLoadBalancerOptionsPortRange>(map['portRanges']!, (value) => EndpointLoadBalancerOptionsPortRange.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      protocol: map['protocol'] == null ? null : ((map['protocol'] as String).input()).input(),
      subnetIds: map['subnetIds'] == null ? null : (((map['subnetIds'] as List).cast<String>()).input()).input(),
    );
  }
}

