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
  JobMonitorRuleState({
    pulumi.Output<String>? delayRuleTime,
    pulumi.Output<String>? dtsJobId,
    pulumi.Output<String>? phone,
    pulumi.Output<String>? state,
    pulumi.Output<String>? type,
  }) :
      delayRuleTime = pulumi.Input.asOptionalInput<String>(delayRuleTime),
      dtsJobId = pulumi.Input.asOptionalInput<String>(dtsJobId),
      phone = pulumi.Input.asOptionalInput<String>(phone),
      state = pulumi.Input.asOptionalInput<String>(state),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      delayRuleTime: map['delayRuleTime'] == null ? null : pulumi.Output.create<String>(map['delayRuleTime'] as String),
      dtsJobId: map['dtsJobId'] == null ? null : pulumi.Output.create<String>(map['dtsJobId'] as String),
      phone: map['phone'] == null ? null : pulumi.Output.create<String>(map['phone'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

