// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dts_job_monitor_rule_job_monitor_rule_args_doc}
/// The set of arguments for JobMonitorRule.
/// {@endtemplate}
/// {@macro pulumi_dts_job_monitor_rule_job_monitor_rule_args_doc}
class JobMonitorRuleArgs {
  /// Trigger delay alarm threshold, which is measured in seconds.
  final pulumi.Input<String>? delayRuleTime;
  /// Migration, synchronization or subscription task ID can be by calling the [DescribeDtsJobs] get.
  final pulumi.Input<String> dtsJobId;
  /// The alarm is triggered after notification of the contact phone number, A plurality of phone numbers between them with a comma (,) to separate.
  final pulumi.Input<String>? phone;
  /// Whether to enable monitoring rules, valid values: `Y`, `N`.
  final pulumi.Input<String>? state;
  /// Monitoring rules of type, valid values: `delay`, `error`. **delay**: delay alarm. **error**: abnormal alarm.
  final pulumi.Input<String> type;

  /// Creates a new [JobMonitorRuleArgs].
  /// [delayRuleTime] Trigger delay alarm threshold, which is measured in seconds.
  /// [dtsJobId] Migration, synchronization or subscription task ID can be by calling the [DescribeDtsJobs] get.
  /// [phone] The alarm is triggered after notification of the contact phone number, A plurality of phone numbers between them with a comma (,) to separate.
  /// [state] Whether to enable monitoring rules, valid values: `Y`, `N`.
  /// [type] Monitoring rules of type, valid values: `delay`, `error`. **delay**: delay alarm. **error**: abnormal alarm.
  JobMonitorRuleArgs({
    this.delayRuleTime,
    required this.dtsJobId,
    this.phone,
    this.state,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delayRuleTime': ?delayRuleTime,
      'dtsJobId': dtsJobId,
      'phone': ?phone,
      'state': ?state,
      'type': type,
    };
  }

  factory JobMonitorRuleArgs.fromMap(Map<String, dynamic> map) {
    return JobMonitorRuleArgs(
      delayRuleTime: map['delayRuleTime'] == null ? null : (map['delayRuleTime'] as String).input(),
      dtsJobId: (map['dtsJobId'] as String).input(),
      phone: map['phone'] == null ? null : (map['phone'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

