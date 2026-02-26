// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../alert_policy_condition_condition_absent_aggregation/alert_policy_condition_condition_absent_aggregation.dart';
import '../alert_policy_condition_condition_absent_trigger/alert_policy_condition_condition_absent_trigger.dart';

class AlertPolicyConditionConditionAbsent {
  /// Specifies the alignment of data points in
  /// individual time series as well as how to
  /// combine the retrieved time series together
  /// (such as when aggregating multiple streams
  /// on each resource to a single stream for each
  /// resource or when aggregating streams across
  /// all members of a group of resources).
  /// Multiple aggregations are applied in the
  /// order specified.
  /// Structure is documented below.
  final List<AlertPolicyConditionConditionAbsentAggregation>? aggregations;

  /// The amount of time that a time series must
  /// fail to report new data to be considered
  /// failing. Currently, only values that are a
  /// multiple of a minute--e.g. 60s, 120s, or 300s
  /// --are supported.
  final String duration;

  /// A filter that identifies which time series
  /// should be compared with the threshold.The
  /// filter is similar to the one that is
  /// specified in the
  /// MetricService.ListTimeSeries request (that
  /// call is useful to verify the time series
  /// that will be retrieved / processed) and must
  /// specify the metric type and optionally may
  /// contain restrictions on resource type,
  /// resource labels, and metric labels. This
  /// field may not exceed 2048 Unicode characters
  /// in length.
  final String? filter;

  /// The number/percent of time series for which
  /// the comparison must hold in order for the
  /// condition to trigger. If unspecified, then
  /// the condition will trigger if the comparison
  /// is true for any of the time series that have
  /// been identified by filter and aggregations.
  /// Structure is documented below.
  final AlertPolicyConditionConditionAbsentTrigger? trigger;

  AlertPolicyConditionConditionAbsent({
    this.aggregations,
    required this.duration,
    this.filter,
    this.trigger,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aggregationsValue = aggregations;
    if (aggregationsValue != null) {
      map['aggregations'] = Input.encodeList<
          AlertPolicyConditionConditionAbsentAggregation,
          Map<String, dynamic>>(aggregationsValue, (value) => value.toMap());
    }
    map['duration'] = duration;
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    final triggerValue = trigger;
    if (triggerValue != null) {
      map['trigger'] = triggerValue.toMap();
    }
    return map;
  }

  factory AlertPolicyConditionConditionAbsent.fromMap(
      Map<String, dynamic> map) {
    return AlertPolicyConditionConditionAbsent(
      aggregations: map['aggregations'] == null
          ? null
          : Input.decodeList<AlertPolicyConditionConditionAbsentAggregation>(
              map['aggregations'],
              (value) => AlertPolicyConditionConditionAbsentAggregation.fromMap(
                  (value as Map).cast<String, dynamic>())),
      duration: map['duration'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
      trigger: map['trigger'] == null
          ? null
          : AlertPolicyConditionConditionAbsentTrigger.fromMap(
              (map['trigger'] as Map).cast<String, dynamic>()),
    );
  }
}
