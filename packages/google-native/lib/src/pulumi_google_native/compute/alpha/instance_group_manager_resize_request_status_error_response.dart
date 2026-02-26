// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'instance_group_manager_resize_request_status_error_errors_item_response.dart';

/// Errors encountered during the queueing or provisioning phases of the ResizeRequest.
class InstanceGroupManagerResizeRequestStatusErrorResponse {
  /// The array of errors encountered while processing this operation.
  final List<InstanceGroupManagerResizeRequestStatusErrorErrorsItemResponse>
      errors;

  InstanceGroupManagerResizeRequestStatusErrorResponse({
    required this.errors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['errors'] = Input.encodeList<
        InstanceGroupManagerResizeRequestStatusErrorErrorsItemResponse,
        Map<String, dynamic>>(errors, (value) => value.toMap());
    return map;
  }

  factory InstanceGroupManagerResizeRequestStatusErrorResponse.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerResizeRequestStatusErrorResponse(
      errors: Input.decodeList<
              InstanceGroupManagerResizeRequestStatusErrorErrorsItemResponse>(
          map['errors'],
          (value) =>
              InstanceGroupManagerResizeRequestStatusErrorErrorsItemResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
