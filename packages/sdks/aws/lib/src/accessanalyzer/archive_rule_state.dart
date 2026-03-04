// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'archive_rule_filter.dart';

/// Input properties used for looking up and filtering ArchiveRule resources.
class ArchiveRuleState {
  /// Analyzer name.
  final pulumi.Input<String>? analyzerName;

  /// Filter criteria for the archive rule. See Filter for more details.
  final pulumi.Input<List<ArchiveRuleFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Rule name.
  final pulumi.Input<String>? ruleName;

  /// Creates a new [ArchiveRuleState].
  /// [analyzerName] Analyzer name.
  /// [filters] Filter criteria for the archive rule. See Filter for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleName] Rule name.
  ArchiveRuleState({
    this.analyzerName,
    this.filters,
    this.region,
    this.ruleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyzerName': ?analyzerName,
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<ArchiveRuleFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<
                  ArchiveRuleFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
      'ruleName': ?ruleName,
    };
  }

  factory ArchiveRuleState.fromMap(Map<String, dynamic> map) {
    return ArchiveRuleState(
      analyzerName: (() {
        final guardedValue = map['analyzerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ArchiveRuleFilter>(
            guardedValue,
            (value) => ArchiveRuleFilter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ruleName: (() {
        final guardedValue = map['ruleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
