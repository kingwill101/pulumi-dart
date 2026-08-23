// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recovery_group_response.dart';

/// Settings for the recovery orchestration groups.
class RecoveryGroupsSettingResponse {
  /// Additional recovery orchestration group settings.
  final pulumi.Input<List<RecoveryGroupResponse>>? additionalGroups;
  /// The default recovery orchestration group setting. Every recovery orchestration plan has a default recovery orchestration group.
  final pulumi.Input<RecoveryGroupResponse> defaultGroup;

  /// Creates a new [RecoveryGroupsSettingResponse].
  /// [additionalGroups] Additional recovery orchestration group settings.
  /// [defaultGroup] The default recovery orchestration group setting. Every recovery orchestration plan has a default recovery orchestration group.
  const RecoveryGroupsSettingResponse({
    this.additionalGroups,
    required this.defaultGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalGroups': ?pulumi.Input.mapOptionalInputValue<List<RecoveryGroupResponse>, List<Map<String, dynamic>>>(additionalGroups, (value) => pulumi.Input.encodeList<RecoveryGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultGroup': pulumi.Input.mapInputValue<RecoveryGroupResponse, Map<String, dynamic>>(defaultGroup, (value) => value.toMap()),
    };
  }

  factory RecoveryGroupsSettingResponse.fromMap(Map<String, dynamic> map) {
    return RecoveryGroupsSettingResponse(
      additionalGroups: (() { final guardedValue = map['additionalGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RecoveryGroupResponse>(guardedValue, (value) => RecoveryGroupResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultGroup: pulumi.Input.fromValue(RecoveryGroupResponse.fromMap((map['defaultGroup']! as Map).cast<String, dynamic>())),
    );
  }
}
