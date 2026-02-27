// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getHostedZoneId.
class GetHostedZoneIdArgs3 {
  /// Type of load balancer to create. Possible values are `application` or `network`. The default value is `application`.
  final Input<String>? loadBalancerType;

  /// Name of the Region whose AWS ELB HostedZoneId is desired. Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetHostedZoneIdArgs3({
    this.loadBalancerType,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final loadBalancerTypeValue = loadBalancerType;
    if (loadBalancerTypeValue != null) {
      map['loadBalancerType'] = loadBalancerTypeValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetHostedZoneIdArgs3.fromMap(Map<String, dynamic> map) {
    return GetHostedZoneIdArgs3(
      loadBalancerType: Input.asOptionalInput<String>(map['loadBalancerType']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
