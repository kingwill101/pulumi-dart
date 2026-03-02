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
  UserFacingErrorResponse({
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
      code: map['code'] == null ? null : (map['code']! as String).input(),
      details: map['details'] == null ? null : (pulumi.Input.decodeList<UserFacingErrorResponse>(map['details']!, (value) => UserFacingErrorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      innerError: map['innerError'] == null ? null : (InnerErrorResponse.fromMap((map['innerError']! as Map).cast<String, dynamic>())).input(),
      isRetryable: map['isRetryable'] == null ? null : (map['isRetryable']! as bool).input(),
      isUserError: map['isUserError'] == null ? null : (map['isUserError']! as bool).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, String>()).input(),
      recommendedAction: map['recommendedAction'] == null ? null : ((map['recommendedAction']! as List).cast<String>()).input(),
      target: map['target'] == null ? null : (map['target']! as String).input(),
    );
  }
}

