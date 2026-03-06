// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HostedZoneDnsSec resources.
class HostedZoneDnsSecState {
  /// Identifier of the Route 53 Hosted Zone.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? hostedZoneId;
  /// Hosted Zone signing status. Valid values: `SIGNING`, `NOT_SIGNING`. Defaults to `SIGNING`.
  final pulumi.Input<String>? signingStatus;

  /// Creates a new [HostedZoneDnsSecState].
  /// [hostedZoneId] Identifier of the Route 53 Hosted Zone.
  /// [signingStatus] Hosted Zone signing status. Valid values: `SIGNING`, `NOT_SIGNING`. Defaults to `SIGNING`.
  const HostedZoneDnsSecState({
    this.hostedZoneId,
    this.signingStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostedZoneId': ?hostedZoneId,
      'signingStatus': ?signingStatus,
    };
  }

  factory HostedZoneDnsSecState.fromMap(Map<String, dynamic> map) {
    return HostedZoneDnsSecState(
      hostedZoneId: (() { final guardedValue = map['hostedZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signingStatus: (() { final guardedValue = map['signingStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

