// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../region_resize_request_status_error_error_error_detail/region_resize_request_status_error_error_error_detail.dart';

class RegionResizeRequestStatusErrorError {
  /// (Output)
  /// The error type identifier for this error.
  final String? code;

  /// (Output)
  /// An array of messages that contain the error details. There is a set of defined message types to use for providing details.The syntax depends on the error code. For example, QuotaExceededInfo will have details when the error code is QUOTA_EXCEEDED.
  /// Structure is documented below.
  final List<RegionResizeRequestStatusErrorErrorErrorDetail>? errorDetails;

  /// (Output)
  /// Indicates the field in the request that caused the error. This property is optional.
  final String? location;

  /// (Output)
  /// The localized error message in the above locale.
  final String? message;

  RegionResizeRequestStatusErrorError({
    this.code,
    this.errorDetails,
    this.location,
    this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeValue = code;
    if (codeValue != null) {
      map['code'] = codeValue;
    }
    final errorDetailsValue = errorDetails;
    if (errorDetailsValue != null) {
      map['errorDetails'] = pulumi.Input.encodeList<
          RegionResizeRequestStatusErrorErrorErrorDetail,
          Map<String, dynamic>>(errorDetailsValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue;
    }
    return map;
  }

  factory RegionResizeRequestStatusErrorError.fromMap(
      Map<String, dynamic> map) {
    return RegionResizeRequestStatusErrorError(
      code: map['code'] == null ? null : map['code'] as String,
      errorDetails: map['errorDetails'] == null
          ? null
          : pulumi.Input.decodeList<
                  RegionResizeRequestStatusErrorErrorErrorDetail>(
              map['errorDetails'],
              (value) => RegionResizeRequestStatusErrorErrorErrorDetail.fromMap(
                  (value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location'] as String,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}
