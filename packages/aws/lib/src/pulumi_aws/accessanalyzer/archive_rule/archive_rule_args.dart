// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../archive_rule_filter/archive_rule_filter.dart';

/// The set of arguments for ArchiveRule.
class ArchiveRuleArgs {
  /// Analyzer name.
  final Input<String> analyzerName;

  /// Filter criteria for the archive rule. See Filter for more details.
  final Input<List<ArchiveRuleFilter>> filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Rule name.
  final Input<String> ruleName;

  ArchiveRuleArgs({
    required this.analyzerName,
    required this.filters,
    this.region,
    required this.ruleName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['analyzerName'] = analyzerName;
    map['filters'] = Input.mapInputValue<List<ArchiveRuleFilter>,
            List<Map<String, dynamic>>>(
        filters,
        (value) => Input.encodeList<ArchiveRuleFilter, Map<String, dynamic>>(
            value, (value) => value.toMap()));
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['ruleName'] = ruleName;
    return map;
  }

  factory ArchiveRuleArgs.fromMap(Map<String, dynamic> map) {
    return ArchiveRuleArgs(
      analyzerName: Input.asInput<String>(map['analyzerName']),
      filters: Input.asInput<List<ArchiveRuleFilter>>(map['filters']),
      region: Input.asOptionalInput<String>(map['region']),
      ruleName: Input.asInput<String>(map['ruleName']),
    );
  }
}
