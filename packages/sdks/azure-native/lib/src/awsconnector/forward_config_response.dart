// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_group_stickiness_config_response.dart';
import 'target_group_tuple_response.dart';

/// Definition of ForwardConfig
class ForwardConfigResponse {
  /// Information about the target group stickiness for a rule. Information about the target group stickiness for a rule.
  final pulumi.Input<TargetGroupStickinessConfigResponse>?
  targetGroupStickinessConfig;

  /// Information about how traffic will be distributed between multiple target groups in a forward rule.
  final pulumi.Input<List<TargetGroupTupleResponse>>? targetGroups;

  /// Creates a new [ForwardConfigResponse].
  /// [targetGroupStickinessConfig] Information about the target group stickiness for a rule. Information about the target group stickiness for a rule.
  /// [targetGroups] Information about how traffic will be distributed between multiple target groups in a forward rule.
  ForwardConfigResponse({this.targetGroupStickinessConfig, this.targetGroups});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetGroupStickinessConfig':
          ?pulumi.Input.mapOptionalInputValue<
            TargetGroupStickinessConfigResponse,
            Map<String, dynamic>
          >(targetGroupStickinessConfig, (value) => value.toMap()),
      'targetGroups':
          ?pulumi.Input.mapOptionalInputValue<
            List<TargetGroupTupleResponse>,
            List<Map<String, dynamic>>
          >(
            targetGroups,
            (value) =>
                pulumi.Input.encodeList<
                  TargetGroupTupleResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ForwardConfigResponse.fromMap(Map<String, dynamic> map) {
    return ForwardConfigResponse(
      targetGroupStickinessConfig: (() {
        final guardedValue = map['targetGroupStickinessConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TargetGroupStickinessConfigResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      targetGroups: (() {
        final guardedValue = map['targetGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TargetGroupTupleResponse>(
            guardedValue,
            (value) => TargetGroupTupleResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
