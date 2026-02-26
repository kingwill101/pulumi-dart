// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../control_condition_active_time_range/control_condition_active_time_range.dart';
import '../control_condition_query_term/control_condition_query_term.dart';

class ControlCondition {
  /// The time range when the condition is active.
  /// Structure is documented below.
  final List<ControlConditionActiveTimeRange>? activeTimeRanges;

  /// The regular expression that the query must match for this condition to be met.
  final String? queryRegex;

  /// The query terms that must be present in the search request for this condition to be met.
  /// Structure is documented below.
  final List<ControlConditionQueryTerm>? queryTerms;

  ControlCondition({
    this.activeTimeRanges,
    this.queryRegex,
    this.queryTerms,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activeTimeRangesValue = activeTimeRanges;
    if (activeTimeRangesValue != null) {
      map['activeTimeRanges'] = Input.encodeList<
              ControlConditionActiveTimeRange, Map<String, dynamic>>(
          activeTimeRangesValue, (value) => value.toMap());
    }
    final queryRegexValue = queryRegex;
    if (queryRegexValue != null) {
      map['queryRegex'] = queryRegexValue;
    }
    final queryTermsValue = queryTerms;
    if (queryTermsValue != null) {
      map['queryTerms'] =
          Input.encodeList<ControlConditionQueryTerm, Map<String, dynamic>>(
              queryTermsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ControlCondition.fromMap(Map<String, dynamic> map) {
    return ControlCondition(
      activeTimeRanges: map['activeTimeRanges'] == null
          ? null
          : Input.decodeList<ControlConditionActiveTimeRange>(
              map['activeTimeRanges'],
              (value) => ControlConditionActiveTimeRange.fromMap(
                  (value as Map).cast<String, dynamic>())),
      queryRegex:
          map['queryRegex'] == null ? null : map['queryRegex'] as String,
      queryTerms: map['queryTerms'] == null
          ? null
          : Input.decodeList<ControlConditionQueryTerm>(
              map['queryTerms'],
              (value) => ControlConditionQueryTerm.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
