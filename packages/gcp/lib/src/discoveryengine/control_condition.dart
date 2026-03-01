// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_condition_active_time_range.dart';
import 'control_condition_query_term.dart';

class ControlCondition {
  /// The time range when the condition is active.
  /// Structure is documented below.
  final List<ControlConditionActiveTimeRange>? activeTimeRanges;

  /// The regular expression that the query must match for this condition to be met.
  final String? queryRegex;

  /// The query terms that must be present in the search request for this condition to be met.
  /// Structure is documented below.
  final List<ControlConditionQueryTerm>? queryTerms;

  /// Creates a new [ControlCondition].
  /// [activeTimeRanges] The time range when the condition is active.
  /// [queryRegex] The regular expression that the query must match for this condition to be met.
  /// [queryTerms] The query terms that must be present in the search request for this condition to be met.
  ControlCondition({this.activeTimeRanges, this.queryRegex, this.queryTerms});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeTimeRanges': ?activeTimeRanges == null
          ? null
          : pulumi.Input.encodeList<
              ControlConditionActiveTimeRange,
              Map<String, dynamic>
            >(activeTimeRanges!, (value) => value.toMap()),
      'queryRegex': ?queryRegex,
      'queryTerms': ?queryTerms == null
          ? null
          : pulumi.Input.encodeList<
              ControlConditionQueryTerm,
              Map<String, dynamic>
            >(queryTerms!, (value) => value.toMap()),
    };
  }

  factory ControlCondition.fromMap(Map<String, dynamic> map) {
    return ControlCondition(
      activeTimeRanges: map['activeTimeRanges'] == null
          ? null
          : pulumi.Input.decodeList<ControlConditionActiveTimeRange>(
              map['activeTimeRanges'],
              (value) => ControlConditionActiveTimeRange.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      queryRegex: map['queryRegex'] == null
          ? null
          : map['queryRegex'] as String,
      queryTerms: map['queryTerms'] == null
          ? null
          : pulumi.Input.decodeList<ControlConditionQueryTerm>(
              map['queryTerms'],
              (value) => ControlConditionQueryTerm.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
