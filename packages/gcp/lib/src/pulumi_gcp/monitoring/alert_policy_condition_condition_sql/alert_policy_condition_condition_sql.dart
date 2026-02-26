// ignore_for_file: unused_element, unnecessary_cast

import '../alert_policy_condition_condition_sql_boolean_test/alert_policy_condition_condition_sql_boolean_test.dart';
import '../alert_policy_condition_condition_sql_daily/alert_policy_condition_condition_sql_daily.dart';
import '../alert_policy_condition_condition_sql_hourly/alert_policy_condition_condition_sql_hourly.dart';
import '../alert_policy_condition_condition_sql_minutes/alert_policy_condition_condition_sql_minutes.dart';
import '../alert_policy_condition_condition_sql_row_count_test/alert_policy_condition_condition_sql_row_count_test.dart';

class AlertPolicyConditionConditionSql {
  /// A test that uses an alerting result in a boolean column produced by the SQL query.
  /// Structure is documented below.
  final AlertPolicyConditionConditionSqlBooleanTest? booleanTest;

  /// Used to schedule the query to run every so many days.
  /// Structure is documented below.
  final AlertPolicyConditionConditionSqlDaily? daily;

  /// Used to schedule the query to run every so many hours.
  /// Structure is documented below.
  final AlertPolicyConditionConditionSqlHourly? hourly;

  /// Used to schedule the query to run every so many minutes.
  /// Structure is documented below.
  final AlertPolicyConditionConditionSqlMinutes? minutes;

  /// The Log Analytics SQL query to run, as a string.  The query must
  /// conform to the required shape. Specifically, the query must not try to
  /// filter the input by time.  A filter will automatically be applied
  /// to filter the input so that the query receives all rows received
  /// since the last time the query was run.
  final String query;

  /// A test that checks if the number of rows in the result set violates some threshold.
  /// Structure is documented below.
  final AlertPolicyConditionConditionSqlRowCountTest? rowCountTest;

  AlertPolicyConditionConditionSql({
    this.booleanTest,
    this.daily,
    this.hourly,
    this.minutes,
    required this.query,
    this.rowCountTest,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final booleanTestValue = booleanTest;
    if (booleanTestValue != null) {
      map['booleanTest'] = booleanTestValue.toMap();
    }
    final dailyValue = daily;
    if (dailyValue != null) {
      map['daily'] = dailyValue.toMap();
    }
    final hourlyValue = hourly;
    if (hourlyValue != null) {
      map['hourly'] = hourlyValue.toMap();
    }
    final minutesValue = minutes;
    if (minutesValue != null) {
      map['minutes'] = minutesValue.toMap();
    }
    map['query'] = query;
    final rowCountTestValue = rowCountTest;
    if (rowCountTestValue != null) {
      map['rowCountTest'] = rowCountTestValue.toMap();
    }
    return map;
  }

  factory AlertPolicyConditionConditionSql.fromMap(Map<String, dynamic> map) {
    return AlertPolicyConditionConditionSql(
      booleanTest: map['booleanTest'] == null
          ? null
          : AlertPolicyConditionConditionSqlBooleanTest.fromMap(
              (map['booleanTest'] as Map).cast<String, dynamic>()),
      daily: map['daily'] == null
          ? null
          : AlertPolicyConditionConditionSqlDaily.fromMap(
              (map['daily'] as Map).cast<String, dynamic>()),
      hourly: map['hourly'] == null
          ? null
          : AlertPolicyConditionConditionSqlHourly.fromMap(
              (map['hourly'] as Map).cast<String, dynamic>()),
      minutes: map['minutes'] == null
          ? null
          : AlertPolicyConditionConditionSqlMinutes.fromMap(
              (map['minutes'] as Map).cast<String, dynamic>()),
      query: map['query'] as String,
      rowCountTest: map['rowCountTest'] == null
          ? null
          : AlertPolicyConditionConditionSqlRowCountTest.fromMap(
              (map['rowCountTest'] as Map).cast<String, dynamic>()),
    );
  }
}
