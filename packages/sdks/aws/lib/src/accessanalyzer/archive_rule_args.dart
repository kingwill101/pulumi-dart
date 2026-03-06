// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'archive_rule_filter.dart';

/// {@template pulumi_accessanalyzer_archive_rule_archive_rule_args_doc}
/// The set of arguments for ArchiveRule.
/// {@endtemplate}
/// {@macro pulumi_accessanalyzer_archive_rule_archive_rule_args_doc}
class ArchiveRuleArgs {
  /// Analyzer name.
  final pulumi.Input<String> analyzerName;
  /// Filter criteria for the archive rule. See Filter for more details.
  final pulumi.Input<List<ArchiveRuleFilter>> filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Rule name.
  final pulumi.Input<String> ruleName;

  /// Creates a new [ArchiveRuleArgs].
  /// [analyzerName] Analyzer name.
  /// [filters] Filter criteria for the archive rule. See Filter for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleName] Rule name.
  const ArchiveRuleArgs({
    required this.analyzerName,
    required this.filters,
    this.region,
    required this.ruleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyzerName': analyzerName,
      'filters': pulumi.Input.mapInputValue<List<ArchiveRuleFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<ArchiveRuleFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'ruleName': ruleName,
    };
  }

  factory ArchiveRuleArgs.fromMap(Map<String, dynamic> map) {
    return ArchiveRuleArgs(
      analyzerName: pulumi.Input.fromValue(map['analyzerName'] as String),
      filters: pulumi.Input.fromValue(pulumi.Input.decodeList<ArchiveRuleFilter>(map['filters']!, (value) => ArchiveRuleFilter.fromMap((value as Map).cast<String, dynamic>()))),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
    );
  }
}

