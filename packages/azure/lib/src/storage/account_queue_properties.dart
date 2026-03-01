// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_queue_properties_cors_rule.dart';
import 'account_queue_properties_hour_metrics.dart';
import 'account_queue_properties_logging.dart';
import 'account_queue_properties_minute_metrics.dart';

class AccountQueueProperties {
  /// A `cors_rule` block as defined above.
  final List<AccountQueuePropertiesCorsRule>? corsRules;
  /// A `hour_metrics` block as defined below.
  final AccountQueuePropertiesHourMetrics? hourMetrics;
  /// A `logging` block as defined below.
  final AccountQueuePropertiesLogging? logging;
  /// A `minute_metrics` block as defined below.
  final AccountQueuePropertiesMinuteMetrics? minuteMetrics;

  /// Creates a new [AccountQueueProperties].
  /// [corsRules] A `cors_rule` block as defined above.
  /// [hourMetrics] A `hour_metrics` block as defined below.
  /// [logging] A `logging` block as defined below.
  /// [minuteMetrics] A `minute_metrics` block as defined below.
  AccountQueueProperties({
    this.corsRules,
    this.hourMetrics,
    this.logging,
    this.minuteMetrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'corsRules': ?corsRules == null ? null : pulumi.Input.encodeList<AccountQueuePropertiesCorsRule, Map<String, dynamic>>(corsRules!, (value) => value.toMap()),
      'hourMetrics': ?hourMetrics == null ? null : hourMetrics!.toMap(),
      'logging': ?logging == null ? null : logging!.toMap(),
      'minuteMetrics': ?minuteMetrics == null ? null : minuteMetrics!.toMap(),
    };
  }

  factory AccountQueueProperties.fromMap(Map<String, dynamic> map) {
    return AccountQueueProperties(
      corsRules: map['corsRules'] == null ? null : pulumi.Input.decodeList<AccountQueuePropertiesCorsRule>(map['corsRules'], (value) => AccountQueuePropertiesCorsRule.fromMap((value as Map).cast<String, dynamic>())),
      hourMetrics: map['hourMetrics'] == null ? null : AccountQueuePropertiesHourMetrics.fromMap((map['hourMetrics'] as Map).cast<String, dynamic>()),
      logging: map['logging'] == null ? null : AccountQueuePropertiesLogging.fromMap((map['logging'] as Map).cast<String, dynamic>()),
      minuteMetrics: map['minuteMetrics'] == null ? null : AccountQueuePropertiesMinuteMetrics.fromMap((map['minuteMetrics'] as Map).cast<String, dynamic>()),
    );
  }
}

