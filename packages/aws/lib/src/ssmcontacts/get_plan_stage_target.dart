// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_plan_stage_target_channel_target_info.dart';
import 'get_plan_stage_target_contact_target_info.dart';

class GetPlanStageTarget {
  final List<GetPlanStageTargetChannelTargetInfo> channelTargetInfos;
  final List<GetPlanStageTargetContactTargetInfo> contactTargetInfos;

  /// Creates a new [GetPlanStageTarget].
  /// [channelTargetInfos] Required.
  /// [contactTargetInfos] Required.
  GetPlanStageTarget({
    required this.channelTargetInfos,
    required this.contactTargetInfos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelTargetInfos':
          pulumi.Input.encodeList<
            GetPlanStageTargetChannelTargetInfo,
            Map<String, dynamic>
          >(channelTargetInfos, (value) => value.toMap()),
      'contactTargetInfos':
          pulumi.Input.encodeList<
            GetPlanStageTargetContactTargetInfo,
            Map<String, dynamic>
          >(contactTargetInfos, (value) => value.toMap()),
    };
  }

  factory GetPlanStageTarget.fromMap(Map<String, dynamic> map) {
    return GetPlanStageTarget(
      channelTargetInfos:
          pulumi.Input.decodeList<GetPlanStageTargetChannelTargetInfo>(
            map['channelTargetInfos'],
            (value) => GetPlanStageTargetChannelTargetInfo.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      contactTargetInfos:
          pulumi.Input.decodeList<GetPlanStageTargetContactTargetInfo>(
            map['contactTargetInfos'],
            (value) => GetPlanStageTargetContactTargetInfo.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
