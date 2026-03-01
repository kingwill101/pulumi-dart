// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recovery_plan_action.dart';
import 'recovery_plan_protected_item.dart';

/// Recovery plan group details.
class RecoveryPlanGroup {
  /// The end group actions.
  final List<RecoveryPlanAction>? endGroupActions;
  /// The group type.
  final String groupType;
  /// The list of protected items.
  final List<RecoveryPlanProtectedItem>? replicationProtectedItems;
  /// The start group actions.
  final List<RecoveryPlanAction>? startGroupActions;

  /// Creates a new [RecoveryPlanGroup].
  /// [endGroupActions] The end group actions.
  /// [groupType] The group type.
  /// [replicationProtectedItems] The list of protected items.
  /// [startGroupActions] The start group actions.
  RecoveryPlanGroup({
    this.endGroupActions,
    required this.groupType,
    this.replicationProtectedItems,
    this.startGroupActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endGroupActions': ?endGroupActions == null ? null : pulumi.Input.encodeList<RecoveryPlanAction, Map<String, dynamic>>(endGroupActions!, (value) => value.toMap()),
      'groupType': groupType,
      'replicationProtectedItems': ?replicationProtectedItems == null ? null : pulumi.Input.encodeList<RecoveryPlanProtectedItem, Map<String, dynamic>>(replicationProtectedItems!, (value) => value.toMap()),
      'startGroupActions': ?startGroupActions == null ? null : pulumi.Input.encodeList<RecoveryPlanAction, Map<String, dynamic>>(startGroupActions!, (value) => value.toMap()),
    };
  }

  factory RecoveryPlanGroup.fromMap(Map<String, dynamic> map) {
    return RecoveryPlanGroup(
      endGroupActions: map['endGroupActions'] == null ? null : pulumi.Input.decodeList<RecoveryPlanAction>(map['endGroupActions'], (value) => RecoveryPlanAction.fromMap((value as Map).cast<String, dynamic>())),
      groupType: map['groupType'] as String,
      replicationProtectedItems: map['replicationProtectedItems'] == null ? null : pulumi.Input.decodeList<RecoveryPlanProtectedItem>(map['replicationProtectedItems'], (value) => RecoveryPlanProtectedItem.fromMap((value as Map).cast<String, dynamic>())),
      startGroupActions: map['startGroupActions'] == null ? null : pulumi.Input.decodeList<RecoveryPlanAction>(map['startGroupActions'], (value) => RecoveryPlanAction.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

