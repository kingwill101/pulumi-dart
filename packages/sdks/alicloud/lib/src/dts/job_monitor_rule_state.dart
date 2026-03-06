// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering JobMonitorRule resources.
class JobMonitorRuleState {
  /// Trigger delay alarm threshold, which is measured in seconds.
  final pulumi.Input<String>? delayRuleTime;
  /// Migration, synchronization or subscription task ID can be by calling the [DescribeDtsJobs] get.
  final pulumi.Input<String>? dtsJobId;
  /// The alarm is triggered after notification of the contact phone number, A plurality of phone numbers between them with a comma (,) to separate.
  final pulumi.Input<String>? phone;
  /// Whether to enable monitoring rules, valid values: `Y`, `N`.
  final pulumi.Input<String>? state;
  /// Monitoring rules of type, valid values: `delay`, `error`. **delay**: delay alarm. **error**: abnormal alarm.
  final pulumi.Input<String>? type;

  /// Creates a new [JobMonitorRuleState].
  /// [delayRuleTime] Trigger delay alarm threshold, which is measured in seconds.
  /// [dtsJobId] Migration, synchronization or subscription task ID can be by calling the [DescribeDtsJobs] get.
  /// [phone] The alarm is triggered after notification of the contact phone number, A plurality of phone numbers between them with a comma (,) to separate.
  /// [state] Whether to enable monitoring rules, valid values: `Y`, `N`.
  /// [type] Monitoring rules of type, valid values: `delay`, `error`. **delay**: delay alarm. **error**: abnormal alarm.
  const JobMonitorRuleState({
    this.delayRuleTime,
    this.dtsJobId,
    this.phone,
    this.state,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delayRuleTime': ?delayRuleTime,
      'dtsJobId': ?dtsJobId,
      'phone': ?phone,
      'state': ?state,
      'type': ?type,
    };
  }

  factory JobMonitorRuleState.fromMap(Map<String, dynamic> map) {
    return JobMonitorRuleState(
      delayRuleTime: (() { final guardedValue = map['delayRuleTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dtsJobId: (() { final guardedValue = map['dtsJobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phone: (() { final guardedValue = map['phone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

