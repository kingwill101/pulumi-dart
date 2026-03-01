// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recovery_plan_action_response.dart';
import 'recovery_plan_protected_item_response.dart';

/// Recovery plan group details.
class RecoveryPlanGroupResponse {
  /// The end group actions.
  final List<RecoveryPlanActionResponse>? endGroupActions;
  /// The group type.
  final String groupType;
  /// The list of protected items.
  final List<RecoveryPlanProtectedItemResponse>? replicationProtectedItems;
  /// The start group actions.
  final List<RecoveryPlanActionResponse>? startGroupActions;

  /// Creates a new [RecoveryPlanGroupResponse].
  /// [endGroupActions] The end group actions.
  /// [groupType] The group type.
  /// [replicationProtectedItems] The list of protected items.
  /// [startGroupActions] The start group actions.
  RecoveryPlanGroupResponse({
    this.endGroupActions,
    required this.groupType,
    this.replicationProtectedItems,
    this.startGroupActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endGroupActions': ?endGroupActions == null ? null : pulumi.Input.encodeList<RecoveryPlanActionResponse, Map<String, dynamic>>(endGroupActions!, (value) => value.toMap()),
      'groupType': groupType,
      'replicationProtectedItems': ?replicationProtectedItems == null ? null : pulumi.Input.encodeList<RecoveryPlanProtectedItemResponse, Map<String, dynamic>>(replicationProtectedItems!, (value) => value.toMap()),
      'startGroupActions': ?startGroupActions == null ? null : pulumi.Input.encodeList<RecoveryPlanActionResponse, Map<String, dynamic>>(startGroupActions!, (value) => value.toMap()),
    };
  }

  factory RecoveryPlanGroupResponse.fromMap(Map<String, dynamic> map) {
    return RecoveryPlanGroupResponse(
      endGroupActions: map['endGroupActions'] == null ? null : pulumi.Input.decodeList<RecoveryPlanActionResponse>(map['endGroupActions'], (value) => RecoveryPlanActionResponse.fromMap((value as Map).cast<String, dynamic>())),
      groupType: map['groupType'] as String,
      replicationProtectedItems: map['replicationProtectedItems'] == null ? null : pulumi.Input.decodeList<RecoveryPlanProtectedItemResponse>(map['replicationProtectedItems'], (value) => RecoveryPlanProtectedItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      startGroupActions: map['startGroupActions'] == null ? null : pulumi.Input.decodeList<RecoveryPlanActionResponse>(map['startGroupActions'], (value) => RecoveryPlanActionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

