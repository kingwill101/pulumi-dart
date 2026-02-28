// ignore_for_file: unused_element, unnecessary_cast

import 'instance_group_manager_resize_request_status_error_response_compute_beta.dart';

class InstanceGroupManagerResizeRequestStatusResponseComputeBeta {
  /// Errors encountered during the queueing or provisioning phases of the ResizeRequest.
  final InstanceGroupManagerResizeRequestStatusErrorResponseComputeBeta error;

  /// Creates a new [InstanceGroupManagerResizeRequestStatusResponseComputeBeta].
  /// [error] Errors encountered during the queueing or provisioning phases of the ResizeRequest.
  InstanceGroupManagerResizeRequestStatusResponseComputeBeta({
    required this.error,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['error'] = error.toMap();
    return map;
  }

  factory InstanceGroupManagerResizeRequestStatusResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerResizeRequestStatusResponseComputeBeta(
      error: InstanceGroupManagerResizeRequestStatusErrorResponseComputeBeta
          .fromMap((map['error'] as Map).cast<String, dynamic>()),
    );
  }
}
