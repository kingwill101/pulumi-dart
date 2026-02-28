// ignore_for_file: unused_element, unnecessary_cast

import 'instance_group_manager_resize_request_status_error_response.dart';
import 'queuing_policy_response.dart';

class InstanceGroupManagerResizeRequestStatusResponse {
  /// Errors encountered during the queueing or provisioning phases of the ResizeRequest.
  final InstanceGroupManagerResizeRequestStatusErrorResponse error;

  /// Constraints for the time when the instances start provisioning. Always exposed as absolute time.
  final QueuingPolicyResponse queuingPolicy;

  /// Creates a new [InstanceGroupManagerResizeRequestStatusResponse].
  /// [error] Errors encountered during the queueing or provisioning phases of the ResizeRequest.
  /// [queuingPolicy] Constraints for the time when the instances start provisioning. Always exposed as absolute time.
  InstanceGroupManagerResizeRequestStatusResponse({
    required this.error,
    required this.queuingPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['error'] = error.toMap();
    map['queuingPolicy'] = queuingPolicy.toMap();
    return map;
  }

  factory InstanceGroupManagerResizeRequestStatusResponse.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerResizeRequestStatusResponse(
      error: InstanceGroupManagerResizeRequestStatusErrorResponse.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      queuingPolicy: QueuingPolicyResponse.fromMap(
          (map['queuingPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}
