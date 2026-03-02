// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesRuleCompliance {
  /// The compliance evaluation result of the target resources.
  final pulumi.Input<String> complianceType;
  /// The number of resources with the specified compliance evaluation result.
  final pulumi.Input<int> count;

  /// Creates a new [GetRulesRuleCompliance].
  /// [complianceType] The compliance evaluation result of the target resources.
  /// [count] The number of resources with the specified compliance evaluation result.
  GetRulesRuleCompliance({
    required this.complianceType,
    required this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complianceType': complianceType,
      'count': count,
    };
  }

  factory GetRulesRuleCompliance.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleCompliance(
      complianceType: (map['complianceType'] as String).input(),
      count: (map['count'] as int).input(),
    );
  }
}

