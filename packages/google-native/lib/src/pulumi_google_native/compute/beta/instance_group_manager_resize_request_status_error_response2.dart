// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'instance_group_manager_resize_request_status_error_errors_item_response2.dart';

/// Errors encountered during the queueing or provisioning phases of the ResizeRequest.
class InstanceGroupManagerResizeRequestStatusErrorResponse2 {
  /// The array of errors encountered while processing this operation.
  final List<InstanceGroupManagerResizeRequestStatusErrorErrorsItemResponse2>
      errors;

  InstanceGroupManagerResizeRequestStatusErrorResponse2({
    required this.errors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['errors'] = Input.encodeList<
        InstanceGroupManagerResizeRequestStatusErrorErrorsItemResponse2,
        Map<String, dynamic>>(errors, (value) => value.toMap());
    return map;
  }

  factory InstanceGroupManagerResizeRequestStatusErrorResponse2.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerResizeRequestStatusErrorResponse2(
      errors: Input.decodeList<
              InstanceGroupManagerResizeRequestStatusErrorErrorsItemResponse2>(
          map['errors'],
          (value) =>
              InstanceGroupManagerResizeRequestStatusErrorErrorsItemResponse2
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
