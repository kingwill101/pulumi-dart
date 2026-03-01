// ignore_for_file: unused_element, unnecessary_cast

import 'plan_stage_target_channel_target_info.dart';
import 'plan_stage_target_contact_target_info.dart';

class PlanStageTarget {
  /// A configuration block for specifying information about the contact channel that Incident Manager engages. See Channel Target Info for more details.
  final PlanStageTargetChannelTargetInfo? channelTargetInfo;
  /// A configuration block for specifying information about the contact that Incident Manager engages. See Contact Target Info for more details.
  final PlanStageTargetContactTargetInfo? contactTargetInfo;

  /// Creates a new [PlanStageTarget].
  /// [channelTargetInfo] A configuration block for specifying information about the contact channel that Incident Manager engages. See Channel Target Info for more details.
  /// [contactTargetInfo] A configuration block for specifying information about the contact that Incident Manager engages. See Contact Target Info for more details.
  PlanStageTarget({
    this.channelTargetInfo,
    this.contactTargetInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelTargetInfo': ?channelTargetInfo == null ? null : channelTargetInfo!.toMap(),
      'contactTargetInfo': ?contactTargetInfo == null ? null : contactTargetInfo!.toMap(),
    };
  }

  factory PlanStageTarget.fromMap(Map<String, dynamic> map) {
    return PlanStageTarget(
      channelTargetInfo: map['channelTargetInfo'] == null ? null : PlanStageTargetChannelTargetInfo.fromMap((map['channelTargetInfo'] as Map).cast<String, dynamic>()),
      contactTargetInfo: map['contactTargetInfo'] == null ? null : PlanStageTargetContactTargetInfo.fromMap((map['contactTargetInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

