// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../archive_rule_filter/archive_rule_filter.dart';

/// The set of arguments for ArchiveRule.
class ArchiveRuleArgs {
  /// Analyzer name.
  final pulumi.Input<String> analyzerName;

  /// Filter criteria for the archive rule. See Filter for more details.
  final pulumi.Input<List<ArchiveRuleFilter>> filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Rule name.
  final pulumi.Input<String> ruleName;

  ArchiveRuleArgs({
    required this.analyzerName,
    required this.filters,
    this.region,
    required this.ruleName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['analyzerName'] = analyzerName;
    map['filters'] = pulumi.Input.mapInputValue<List<ArchiveRuleFilter>,
            List<Map<String, dynamic>>>(
        filters,
        (value) =>
            pulumi.Input.encodeList<ArchiveRuleFilter, Map<String, dynamic>>(
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
      analyzerName: pulumi.Input.asInput<String>(map['analyzerName']),
      filters: pulumi.Input.asInput<List<ArchiveRuleFilter>>(map['filters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      ruleName: pulumi.Input.asInput<String>(map['ruleName']),
    );
  }
}
