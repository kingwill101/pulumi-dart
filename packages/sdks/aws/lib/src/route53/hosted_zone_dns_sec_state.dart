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
  HostedZoneDnsSecState({
    pulumi.Output<String>? hostedZoneId,
    pulumi.Output<String>? signingStatus,
  }) :
      hostedZoneId = pulumi.Input.asOptionalInput<String>(hostedZoneId),
      signingStatus = pulumi.Input.asOptionalInput<String>(signingStatus);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostedZoneId': ?hostedZoneId,
      'signingStatus': ?signingStatus,
    };
  }

  factory HostedZoneDnsSecState.fromMap(Map<String, dynamic> map) {
    return HostedZoneDnsSecState(
      hostedZoneId: map['hostedZoneId'] == null ? null : pulumi.Output.create<String>(map['hostedZoneId'] as String),
      signingStatus: map['signingStatus'] == null ? null : pulumi.Output.create<String>(map['signingStatus'] as String),
    );
  }
}

