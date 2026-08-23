// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recovery_group_custom_runbook_action_response.dart';

/// Properties of the recovery orchestration group.
class RecoveryGroupPropertiesResponse {
  /// A description of the recovery orchestration group.
  final pulumi.Input<String> description;
  /// A unique id for the recovery orchestration group, which is a GUID.
  final pulumi.Input<String> groupUniqueId;
  /// The order ID of the recovery orchestration group.
  final pulumi.Input<int> orderId;
  /// Post-actions for the recovery orchestration group.
  final pulumi.Input<List<RecoveryGroupCustomRunbookActionResponse>>? postActions;
  /// Pre-actions for the recovery orchestration group.
  final pulumi.Input<List<RecoveryGroupCustomRunbookActionResponse>>? preActions;

  /// Creates a new [RecoveryGroupPropertiesResponse].
  /// [description] A description of the recovery orchestration group.
  /// [groupUniqueId] A unique id for the recovery orchestration group, which is a GUID.
  /// [orderId] The order ID of the recovery orchestration group.
  /// [postActions] Post-actions for the recovery orchestration group.
  /// [preActions] Pre-actions for the recovery orchestration group.
  const RecoveryGroupPropertiesResponse({
    required this.description,
    required this.groupUniqueId,
    required this.orderId,
    this.postActions,
    this.preActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'groupUniqueId': groupUniqueId,
      'orderId': orderId,
      'postActions': ?pulumi.Input.mapOptionalInputValue<List<RecoveryGroupCustomRunbookActionResponse>, List<Map<String, dynamic>>>(postActions, (value) => pulumi.Input.encodeList<RecoveryGroupCustomRunbookActionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'preActions': ?pulumi.Input.mapOptionalInputValue<List<RecoveryGroupCustomRunbookActionResponse>, List<Map<String, dynamic>>>(preActions, (value) => pulumi.Input.encodeList<RecoveryGroupCustomRunbookActionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RecoveryGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RecoveryGroupPropertiesResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      groupUniqueId: pulumi.Input.fromValue(map['groupUniqueId'] as String),
      orderId: pulumi.Input.fromValue(map['orderId'] as int),
      postActions: (() { final guardedValue = map['postActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RecoveryGroupCustomRunbookActionResponse>(guardedValue, (value) => RecoveryGroupCustomRunbookActionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      preActions: (() { final guardedValue = map['preActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RecoveryGroupCustomRunbookActionResponse>(guardedValue, (value) => RecoveryGroupCustomRunbookActionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
