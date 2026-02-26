// ignore_for_file: unused_element, unnecessary_cast

import 'instance_group_manager_resize_request_status_error_response2.dart';

class InstanceGroupManagerResizeRequestStatusResponse2 {
  /// Errors encountered during the queueing or provisioning phases of the ResizeRequest.
  final InstanceGroupManagerResizeRequestStatusErrorResponse2 error;

  InstanceGroupManagerResizeRequestStatusResponse2({
    required this.error,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['error'] = error.toMap();
    return map;
  }

  factory InstanceGroupManagerResizeRequestStatusResponse2.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerResizeRequestStatusResponse2(
      error: InstanceGroupManagerResizeRequestStatusErrorResponse2.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
    );
  }
}
