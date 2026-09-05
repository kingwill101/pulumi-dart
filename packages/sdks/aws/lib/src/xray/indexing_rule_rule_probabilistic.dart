// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IndexingRuleRuleProbabilistic {
  final pulumi.Input<double?>? actualSamplingPercentage;
  /// Configured sampling percentage of traceIds.
  final pulumi.Input<double> desiredSamplingPercentage;

  /// Creates a new [IndexingRuleRuleProbabilistic].
  /// [actualSamplingPercentage] Optional.
  /// [desiredSamplingPercentage] Configured sampling percentage of traceIds.
  const IndexingRuleRuleProbabilistic({
    this.actualSamplingPercentage,
    required this.desiredSamplingPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualSamplingPercentage': ?actualSamplingPercentage,
      'desiredSamplingPercentage': desiredSamplingPercentage,
    };
  }

  factory IndexingRuleRuleProbabilistic.fromMap(Map<String, dynamic> map) {
    return IndexingRuleRuleProbabilistic(
      actualSamplingPercentage: (() { final guardedValue = map['actualSamplingPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      desiredSamplingPercentage: pulumi.Input.fromValue((map['desiredSamplingPercentage'] as num).toDouble()),
    );
  }
}
