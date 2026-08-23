// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRecordsResourceRecordSetAliasTarget {
  /// Target DNS name.
  final pulumi.Input<String> dnsName;
  /// Whether an alias resource record set inherits the health of the referenced AWS resource.
  final pulumi.Input<bool> evaluateTargetHealth;
  /// Target hosted zone ID.
  final pulumi.Input<String> hostedZoneId;

  /// Creates a new [GetRecordsResourceRecordSetAliasTarget].
  /// [dnsName] Target DNS name.
  /// [evaluateTargetHealth] Whether an alias resource record set inherits the health of the referenced AWS resource.
  /// [hostedZoneId] Target hosted zone ID.
  const GetRecordsResourceRecordSetAliasTarget({
    required this.dnsName,
    required this.evaluateTargetHealth,
    required this.hostedZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': dnsName,
      'evaluateTargetHealth': evaluateTargetHealth,
      'hostedZoneId': hostedZoneId,
    };
  }

  factory GetRecordsResourceRecordSetAliasTarget.fromMap(Map<String, dynamic> map) {
    return GetRecordsResourceRecordSetAliasTarget(
      dnsName: pulumi.Input.fromValue(map['dnsName'] as String),
      evaluateTargetHealth: pulumi.Input.fromValue(map['evaluateTargetHealth'] as bool),
      hostedZoneId: pulumi.Input.fromValue(map['hostedZoneId'] as String),
    );
  }
}
