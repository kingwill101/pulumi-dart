// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getHostedZoneId.
class GetHostedZoneIdLbArgs {
  /// Type of load balancer to create. Possible values are `application` or `network`. The default value is `application`.
  final pulumi.Input<String>? loadBalancerType;

  /// Name of the Region whose AWS ELB HostedZoneId is desired. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetHostedZoneIdLbArgs({
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

  factory GetHostedZoneIdLbArgs.fromMap(Map<String, dynamic> map) {
    return GetHostedZoneIdLbArgs(
      loadBalancerType:
          pulumi.Input.asOptionalInput<String>(map['loadBalancerType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
