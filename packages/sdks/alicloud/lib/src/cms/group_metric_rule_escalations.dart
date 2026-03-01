// ignore_for_file: unused_element, unnecessary_cast

import 'group_metric_rule_escalations_critical.dart';
import 'group_metric_rule_escalations_info.dart';
import 'group_metric_rule_escalations_warn.dart';

class GroupMetricRuleEscalations {
  /// The critical level. See `critical` below.
  final GroupMetricRuleEscalationsCritical? critical;
  /// The info level. See `info` below.
  final GroupMetricRuleEscalationsInfo? info;
  /// The warn level. See `warn` below.
  final GroupMetricRuleEscalationsWarn? warn;

  /// Creates a new [GroupMetricRuleEscalations].
  /// [critical] The critical level. See `critical` below.
  /// [info] The info level. See `info` below.
  /// [warn] The warn level. See `warn` below.
  GroupMetricRuleEscalations({
    this.critical,
    this.info,
    this.warn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'critical': ?critical == null ? null : critical!.toMap(),
      'info': ?info == null ? null : info!.toMap(),
      'warn': ?warn == null ? null : warn!.toMap(),
    };
  }

  factory GroupMetricRuleEscalations.fromMap(Map<String, dynamic> map) {
    return GroupMetricRuleEscalations(
      critical: map['critical'] == null ? null : GroupMetricRuleEscalationsCritical.fromMap((map['critical'] as Map).cast<String, dynamic>()),
      info: map['info'] == null ? null : GroupMetricRuleEscalationsInfo.fromMap((map['info'] as Map).cast<String, dynamic>()),
      warn: map['warn'] == null ? null : GroupMetricRuleEscalationsWarn.fromMap((map['warn'] as Map).cast<String, dynamic>()),
    );
  }
}

