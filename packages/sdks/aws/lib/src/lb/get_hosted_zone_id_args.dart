// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lb_get_hosted_zone_id_get_hosted_zone_id_args_doc}
/// Arguments for getHostedZoneId.
/// {@endtemplate}
/// {@macro pulumi_lb_get_hosted_zone_id_get_hosted_zone_id_args_doc}
class GetHostedZoneIdArgs {
  /// Type of load balancer to create. Possible values are `application` or `network`. The default value is `application`.
  final pulumi.Input<String>? loadBalancerType;
  /// Name of the Region whose AWS ELB HostedZoneId is desired. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetHostedZoneIdArgs].
  /// [loadBalancerType] Type of load balancer to create. Possible values are `application` or `network`. The default value is `application`.
  /// [region] Name of the Region whose AWS ELB HostedZoneId is desired. Defaults to the Region set in the provider configuration.
  const GetHostedZoneIdArgs({
    this.loadBalancerType,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerType': ?loadBalancerType,
      'region': ?region,
    };
  }

  factory GetHostedZoneIdArgs.fromMap(Map<String, dynamic> map) {
    return GetHostedZoneIdArgs(
      loadBalancerType: (() { final guardedValue = map['loadBalancerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

