// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_contentwarehouse_v1_access_control_action_operation_type.dart';
import 'google_iam_v1_policy.dart';

/// Represents the action responsible for access control list management operations.
class GoogleCloudContentwarehouseV1AccessControlAction {
  /// Identifies the type of operation.
  final GoogleCloudContentwarehouseV1AccessControlActionOperationType?
  operationType;

  /// Represents the new policy from which bindings are added, removed or replaced based on the type of the operation. the policy is limited to a few 10s of KB.
  final GoogleIamV1Policy? policy;

  /// Creates a new [GoogleCloudContentwarehouseV1AccessControlAction].
  /// [operationType] Identifies the type of operation.
  /// [policy] Represents the new policy from which bindings are added, removed or replaced based on the type of the operation. the policy is limited to a few 10s of KB.
  GoogleCloudContentwarehouseV1AccessControlAction({
    this.operationType,
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationType': ?operationType == null ? null : operationType!.value,
      'policy': ?policy == null ? null : policy!.toMap(),
    };
  }

  factory GoogleCloudContentwarehouseV1AccessControlAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContentwarehouseV1AccessControlAction(
      operationType: map['operationType'] == null
          ? null
          : GoogleCloudContentwarehouseV1AccessControlActionOperationType.fromValue(
              map['operationType'] as String,
            ),
      policy: map['policy'] == null
          ? null
          : GoogleIamV1Policy.fromMap(
              (map['policy'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
