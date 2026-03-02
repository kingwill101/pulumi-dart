// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_error_base_response.dart';
import 'inner_error_response.dart';

/// Api error.
class ApiErrorResponse {
  /// The error code.
  final pulumi.Input<String>? code;
  /// The Api error details
  final pulumi.Input<List<ApiErrorBaseResponse>>? details;
  /// The Api inner error
  final pulumi.Input<InnerErrorResponse>? innererror;
  /// The error message.
  final pulumi.Input<String>? message;
  /// The target of the particular error.
  final pulumi.Input<String>? target;

  /// Creates a new [ApiErrorResponse].
  /// [code] The error code.
  /// [details] The Api error details
  /// [innererror] The Api inner error
  /// [message] The error message.
  /// [target] The target of the particular error.
  ApiErrorResponse({
    this.code,
    this.details,
    this.innererror,
    this.message,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'details': ?pulumi.Input.mapOptionalInputValue<List<ApiErrorBaseResponse>, List<Map<String, dynamic>>>(details, (value) => pulumi.Input.encodeList<ApiErrorBaseResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'innererror': ?pulumi.Input.mapOptionalInputValue<InnerErrorResponse, Map<String, dynamic>>(innererror, (value) => value.toMap()),
      'message': ?message,
      'target': ?target,
    };
  }

  factory ApiErrorResponse.fromMap(Map<String, dynamic> map) {
    return ApiErrorResponse(
      code: map['code'] == null ? null : (map['code'] as String).input(),
      details: map['details'] == null ? null : (pulumi.Input.decodeList<ApiErrorBaseResponse>(map['details'], (value) => ApiErrorBaseResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      innererror: map['innererror'] == null ? null : (InnerErrorResponse.fromMap((map['innererror'] as Map).cast<String, dynamic>())).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
      target: map['target'] == null ? null : (map['target'] as String).input(),
    );
  }
}

