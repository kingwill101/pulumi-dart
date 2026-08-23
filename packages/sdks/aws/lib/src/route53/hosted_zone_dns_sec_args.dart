// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_hosted_zone_dns_sec_hosted_zone_dns_sec_args_doc}
/// The set of arguments for HostedZoneDnsSec.
/// {@endtemplate}
/// {@macro pulumi_route53_hosted_zone_dns_sec_hosted_zone_dns_sec_args_doc}
class HostedZoneDnsSecArgs {
  /// Identifier of the Route 53 Hosted Zone.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> hostedZoneId;
  /// Hosted Zone signing status. Valid values: `SIGNING`, `NOT_SIGNING`. Defaults to `SIGNING`.
  final pulumi.Input<String>? signingStatus;

  /// Creates a new [HostedZoneDnsSecArgs].
  /// [hostedZoneId] Identifier of the Route 53 Hosted Zone.
  /// [signingStatus] Hosted Zone signing status. Valid values: `SIGNING`, `NOT_SIGNING`. Defaults to `SIGNING`.
  const HostedZoneDnsSecArgs({
    required this.hostedZoneId,
    this.signingStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostedZoneId': hostedZoneId,
      'signingStatus': ?signingStatus,
    };
  }

  factory HostedZoneDnsSecArgs.fromMap(Map<String, dynamic> map) {
    return HostedZoneDnsSecArgs(
      hostedZoneId: pulumi.Input.fromValue(map['hostedZoneId'] as String),
      signingStatus: (() { final guardedValue = map['signingStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
