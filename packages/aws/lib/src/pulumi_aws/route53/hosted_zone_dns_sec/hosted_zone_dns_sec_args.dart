// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for HostedZoneDnsSec.
class HostedZoneDnsSecArgs {
  /// Identifier of the Route 53 Hosted Zone.
  ///
  /// The following arguments are optional:
  final Input<String> hostedZoneId;

  /// Hosted Zone signing status. Valid values: `SIGNING`, `NOT_SIGNING`. Defaults to `SIGNING`.
  final Input<String>? signingStatus;

  HostedZoneDnsSecArgs({
    required this.hostedZoneId,
    this.signingStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostedZoneId'] = hostedZoneId;
    final signingStatusValue = signingStatus;
    if (signingStatusValue != null) {
      map['signingStatus'] = signingStatusValue;
    }
    return map;
  }

  factory HostedZoneDnsSecArgs.fromMap(Map<String, dynamic> map) {
    return HostedZoneDnsSecArgs(
      hostedZoneId: Input.asInput<String>(map['hostedZoneId']),
      signingStatus: Input.asOptionalInput<String>(map['signingStatus']),
    );
  }
}
