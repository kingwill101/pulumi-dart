// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'instance_group_manager_resize_request_status_error_errors_item_error_details_item_response2.dart';

class InstanceGroupManagerResizeRequestStatusErrorErrorsItemResponse2 {
  /// The error type identifier for this error.
  final String code;

  /// An optional list of messages that contain the error details. There is a set of defined message types to use for providing details.The syntax depends on the error code. For example, QuotaExceededInfo will have details when the error code is QUOTA_EXCEEDED.
  final List<
          InstanceGroupManagerResizeRequestStatusErrorErrorsItemErrorDetailsItemResponse2>
      errorDetails;

  /// Indicates the field in the request that caused the error. This property is optional.
  final String location;

  /// An optional, human-readable error message.
  final String message;

  InstanceGroupManagerResizeRequestStatusErrorErrorsItemResponse2({
    required this.code,
    required this.errorDetails,
    required this.location,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['errorDetails'] = Input.encodeList<
        InstanceGroupManagerResizeRequestStatusErrorErrorsItemErrorDetailsItemResponse2,
        Map<String, dynamic>>(errorDetails, (value) => value.toMap());
    map['location'] = location;
    map['message'] = message;
    return map;
  }

  factory InstanceGroupManagerResizeRequestStatusErrorErrorsItemResponse2.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerResizeRequestStatusErrorErrorsItemResponse2(
      code: map['code'] as String,
      errorDetails: Input.decodeList<
              InstanceGroupManagerResizeRequestStatusErrorErrorsItemErrorDetailsItemResponse2>(
          map['errorDetails'],
          (value) =>
              InstanceGroupManagerResizeRequestStatusErrorErrorsItemErrorDetailsItemResponse2
                  .fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      message: map['message'] as String,
    );
  }
}
