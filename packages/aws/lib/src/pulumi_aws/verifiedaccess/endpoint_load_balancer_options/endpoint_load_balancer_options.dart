// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../endpoint_load_balancer_options_port_range/endpoint_load_balancer_options_port_range.dart';

class EndpointLoadBalancerOptions {
  final String? loadBalancerArn;
  final int? port;
  final List<EndpointLoadBalancerOptionsPortRange>? portRanges;
  final String? protocol;
  final List<String>? subnetIds;

  EndpointLoadBalancerOptions({
    this.loadBalancerArn,
    this.port,
    this.portRanges,
    this.protocol,
    this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final loadBalancerArnValue = loadBalancerArn;
    if (loadBalancerArnValue != null) {
      map['loadBalancerArn'] = loadBalancerArnValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final portRangesValue = portRanges;
    if (portRangesValue != null) {
      map['portRanges'] = Input.encodeList<EndpointLoadBalancerOptionsPortRange,
          Map<String, dynamic>>(portRangesValue, (value) => value.toMap());
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    final subnetIdsValue = subnetIds;
    if (subnetIdsValue != null) {
      map['subnetIds'] = subnetIdsValue;
    }
    return map;
  }

  factory EndpointLoadBalancerOptions.fromMap(Map<String, dynamic> map) {
    return EndpointLoadBalancerOptions(
      loadBalancerArn: map['loadBalancerArn'] == null
          ? null
          : map['loadBalancerArn'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      portRanges: map['portRanges'] == null
          ? null
          : Input.decodeList<EndpointLoadBalancerOptionsPortRange>(
              map['portRanges'],
              (value) => EndpointLoadBalancerOptionsPortRange.fromMap(
                  (value as Map).cast<String, dynamic>())),
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      subnetIds: map['subnetIds'] == null
          ? null
          : (map['subnetIds'] as List).cast<String>(),
    );
  }
}
