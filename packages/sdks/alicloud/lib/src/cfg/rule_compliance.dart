// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleCompliance {
  /// The type of compliance. Valid values: `COMPLIANT`, `NON_COMPLIANT`, `NOT_APPLICABLE`, `INSUFFICIENT_DATA`.
  final pulumi.Input<String>? complianceType;
  /// The count of compliance.
  final pulumi.Input<int>? count;

  /// Creates a new [RuleCompliance].
  /// [complianceType] The type of compliance. Valid values: `COMPLIANT`, `NON_COMPLIANT`, `NOT_APPLICABLE`, `INSUFFICIENT_DATA`.
  /// [count] The count of compliance.
  RuleCompliance({
    this.complianceType,
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complianceType': ?complianceType,
      'count': ?count,
    };
  }

  factory RuleCompliance.fromMap(Map<String, dynamic> map) {
    return RuleCompliance(
      complianceType: map['complianceType'] == null ? null : (map['complianceType'] as String).input(),
      count: map['count'] == null ? null : (map['count'] as int).input(),
    );
  }
}

