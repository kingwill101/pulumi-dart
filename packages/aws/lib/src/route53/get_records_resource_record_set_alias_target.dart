// ignore_for_file: unused_element, unnecessary_cast

class GetRecordsResourceRecordSetAliasTarget {
  /// Target DNS name.
  final String dnsName;

  /// Whether an alias resource record set inherits the health of the referenced AWS resource.
  final bool evaluateTargetHealth;

  /// Target hosted zone ID.
  final String hostedZoneId;

  /// Creates a new [GetRecordsResourceRecordSetAliasTarget].
  /// [dnsName] Target DNS name.
  /// [evaluateTargetHealth] Whether an alias resource record set inherits the health of the referenced AWS resource.
  /// [hostedZoneId] Target hosted zone ID.
  GetRecordsResourceRecordSetAliasTarget({
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

  factory GetRecordsResourceRecordSetAliasTarget.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRecordsResourceRecordSetAliasTarget(
      dnsName: map['dnsName'] as String,
      evaluateTargetHealth: map['evaluateTargetHealth'] as bool,
      hostedZoneId: map['hostedZoneId'] as String,
    );
  }
}
