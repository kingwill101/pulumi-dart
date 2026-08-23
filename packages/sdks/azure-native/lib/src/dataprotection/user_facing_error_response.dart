// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inner_error_response.dart';

/// Error object used by layers that have access to localized content, and propagate that to user
class UserFacingErrorResponse {
  /// Unique code for this error
  final pulumi.Input<String>? code;
  /// Additional related Errors
  final pulumi.Input<List<UserFacingErrorResponse>>? details;
  /// Inner Error
  final pulumi.Input<InnerErrorResponse>? innerError;
  /// Whether the operation will be retryable or not
  final pulumi.Input<bool>? isRetryable;
  /// Whether the operation is due to a user error or service error
  final pulumi.Input<bool>? isUserError;
  final pulumi.Input<String>? message;
  /// Any key value pairs that can be injected inside error object
  final pulumi.Input<Map<String, String>>? properties;
  /// RecommendedAction � localized.
  final pulumi.Input<List<String>>? recommendedAction;
  /// Target of the error.
  final pulumi.Input<String>? target;

  /// Creates a new [UserFacingErrorResponse].
  /// [code] Unique code for this error
  /// [details] Additional related Errors
  /// [innerError] Inner Error
  /// [isRetryable] Whether the operation will be retryable or not
  /// [isUserError] Whether the operation is due to a user error or service error
  /// [message] Optional.
  /// [properties] Any key value pairs that can be injected inside error object
  /// [recommendedAction] RecommendedAction � localized.
  /// [target] Target of the error.
  const UserFacingErrorResponse({
    this.code,
    this.details,
    this.innerError,
    this.isRetryable,
    this.isUserError,
    this.message,
    this.properties,
    this.recommendedAction,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'details': ?pulumi.Input.mapOptionalInputValue<List<UserFacingErrorResponse>, List<Map<String, dynamic>>>(details, (value) => pulumi.Input.encodeList<UserFacingErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'innerError': ?pulumi.Input.mapOptionalInputValue<InnerErrorResponse, Map<String, dynamic>>(innerError, (value) => value.toMap()),
      'isRetryable': ?isRetryable,
      'isUserError': ?isUserError,
      'message': ?message,
      'properties': ?properties,
      'recommendedAction': ?recommendedAction,
      'target': ?target,
    };
  }

  factory UserFacingErrorResponse.fromMap(Map<String, dynamic> map) {
    return UserFacingErrorResponse(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserFacingErrorResponse>(guardedValue, (value) => UserFacingErrorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      innerError: (() { final guardedValue = map['innerError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InnerErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isRetryable: (() { final guardedValue = map['isRetryable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isUserError: (() { final guardedValue = map['isUserError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      recommendedAction: (() { final guardedValue = map['recommendedAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
