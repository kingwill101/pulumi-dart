// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_group_stickiness_config_response.dart';
import 'target_group_tuple_response.dart';

/// Definition of ForwardConfig
class ForwardConfigResponse {
  /// Information about the target group stickiness for a rule. Information about the target group stickiness for a rule.
  final TargetGroupStickinessConfigResponse? targetGroupStickinessConfig;
  /// Information about how traffic will be distributed between multiple target groups in a forward rule.
  final List<TargetGroupTupleResponse>? targetGroups;

  /// Creates a new [ForwardConfigResponse].
  /// [targetGroupStickinessConfig] Information about the target group stickiness for a rule. Information about the target group stickiness for a rule.
  /// [targetGroups] Information about how traffic will be distributed between multiple target groups in a forward rule.
  ForwardConfigResponse({
    this.targetGroupStickinessConfig,
    this.targetGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetGroupStickinessConfig': ?targetGroupStickinessConfig == null ? null : targetGroupStickinessConfig!.toMap(),
      'targetGroups': ?targetGroups == null ? null : pulumi.Input.encodeList<TargetGroupTupleResponse, Map<String, dynamic>>(targetGroups!, (value) => value.toMap()),
    };
  }

  factory ForwardConfigResponse.fromMap(Map<String, dynamic> map) {
    return ForwardConfigResponse(
      targetGroupStickinessConfig: map['targetGroupStickinessConfig'] == null ? null : TargetGroupStickinessConfigResponse.fromMap((map['targetGroupStickinessConfig'] as Map).cast<String, dynamic>()),
      targetGroups: map['targetGroups'] == null ? null : pulumi.Input.decodeList<TargetGroupTupleResponse>(map['targetGroups'], (value) => TargetGroupTupleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

