// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resize_request_status_last_attempt_error_error_error_detail.dart';

class ResizeRequestStatusLastAttemptErrorError {
  /// (Output)
  /// The error type identifier for this error.
  final String? code;

  /// (Output)
  /// An array of messages that contain the error details. There is a set of defined message types to use for providing details.The syntax depends on the error code. For example, QuotaExceededInfo will have details when the error code is QUOTA_EXCEEDED.
  /// Structure is documented below.
  final List<ResizeRequestStatusLastAttemptErrorErrorErrorDetail>? errorDetails;

  /// (Output)
  /// Indicates the field in the request that caused the error. This property is optional.
  final String? location;

  /// (Output)
  /// The localized error message in the above locale.
  final String? message;

  /// Creates a new [ResizeRequestStatusLastAttemptErrorError].
  /// [code] (Output)
  /// [errorDetails] (Output)
  /// [location] (Output)
  /// [message] (Output)
  ResizeRequestStatusLastAttemptErrorError({
    this.code,
    this.errorDetails,
    this.location,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'errorDetails': ?errorDetails == null
          ? null
          : pulumi.Input.encodeList<
              ResizeRequestStatusLastAttemptErrorErrorErrorDetail,
              Map<String, dynamic>
            >(errorDetails!, (value) => value.toMap()),
      'location': ?location,
      'message': ?message,
    };
  }

  factory ResizeRequestStatusLastAttemptErrorError.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResizeRequestStatusLastAttemptErrorError(
      code: map['code'] == null ? null : map['code'] as String,
      errorDetails: map['errorDetails'] == null
          ? null
          : pulumi.Input.decodeList<
              ResizeRequestStatusLastAttemptErrorErrorErrorDetail
            >(
              map['errorDetails'],
              (value) =>
                  ResizeRequestStatusLastAttemptErrorErrorErrorDetail.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      location: map['location'] == null ? null : map['location'] as String,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}
