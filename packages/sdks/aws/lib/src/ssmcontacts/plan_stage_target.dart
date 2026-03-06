// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_stage_target_channel_target_info.dart';
import 'plan_stage_target_contact_target_info.dart';

class PlanStageTarget {
  /// A configuration block for specifying information about the contact channel that Incident Manager engages. See Channel Target Info for more details.
  final pulumi.Input<PlanStageTargetChannelTargetInfo>? channelTargetInfo;
  /// A configuration block for specifying information about the contact that Incident Manager engages. See Contact Target Info for more details.
  final pulumi.Input<PlanStageTargetContactTargetInfo>? contactTargetInfo;

  /// Creates a new [PlanStageTarget].
  /// [channelTargetInfo] A configuration block for specifying information about the contact channel that Incident Manager engages. See Channel Target Info for more details.
  /// [contactTargetInfo] A configuration block for specifying information about the contact that Incident Manager engages. See Contact Target Info for more details.
  const PlanStageTarget({
    this.channelTargetInfo,
    this.contactTargetInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelTargetInfo': ?pulumi.Input.mapOptionalInputValue<PlanStageTargetChannelTargetInfo, Map<String, dynamic>>(channelTargetInfo, (value) => value.toMap()),
      'contactTargetInfo': ?pulumi.Input.mapOptionalInputValue<PlanStageTargetContactTargetInfo, Map<String, dynamic>>(contactTargetInfo, (value) => value.toMap()),
    };
  }

  factory PlanStageTarget.fromMap(Map<String, dynamic> map) {
    return PlanStageTarget(
      channelTargetInfo: (() { final guardedValue = map['channelTargetInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlanStageTargetChannelTargetInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      contactTargetInfo: (() { final guardedValue = map['contactTargetInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlanStageTargetContactTargetInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

