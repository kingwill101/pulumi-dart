// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_metric_rule_escalations_critical.dart';
import 'group_metric_rule_escalations_info.dart';
import 'group_metric_rule_escalations_warn.dart';

class GroupMetricRuleEscalations {
  /// The critical level. See `critical` below.
  final pulumi.Input<GroupMetricRuleEscalationsCritical>? critical;
  /// The info level. See `info` below.
  final pulumi.Input<GroupMetricRuleEscalationsInfo>? info;
  /// The warn level. See `warn` below.
  final pulumi.Input<GroupMetricRuleEscalationsWarn>? warn;

  /// Creates a new [GroupMetricRuleEscalations].
  /// [critical] The critical level. See `critical` below.
  /// [info] The info level. See `info` below.
  /// [warn] The warn level. See `warn` below.
  const GroupMetricRuleEscalations({
    this.critical,
    this.info,
    this.warn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'critical': ?pulumi.Input.mapOptionalInputValue<GroupMetricRuleEscalationsCritical, Map<String, dynamic>>(critical, (value) => value.toMap()),
      'info': ?pulumi.Input.mapOptionalInputValue<GroupMetricRuleEscalationsInfo, Map<String, dynamic>>(info, (value) => value.toMap()),
      'warn': ?pulumi.Input.mapOptionalInputValue<GroupMetricRuleEscalationsWarn, Map<String, dynamic>>(warn, (value) => value.toMap()),
    };
  }

  factory GroupMetricRuleEscalations.fromMap(Map<String, dynamic> map) {
    return GroupMetricRuleEscalations(
      critical: (() { final guardedValue = map['critical']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupMetricRuleEscalationsCritical.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      info: (() { final guardedValue = map['info']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupMetricRuleEscalationsInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      warn: (() { final guardedValue = map['warn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupMetricRuleEscalationsWarn.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

