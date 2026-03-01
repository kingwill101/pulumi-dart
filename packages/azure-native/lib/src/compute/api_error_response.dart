// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_error_base_response.dart';
import 'inner_error_response.dart';

/// Api error.
class ApiErrorResponse {
  /// The error code.
  final String? code;
  /// The Api error details
  final List<ApiErrorBaseResponse>? details;
  /// The Api inner error
  final InnerErrorResponse? innererror;
  /// The error message.
  final String? message;
  /// The target of the particular error.
  final String? target;

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
      'details': ?details == null ? null : pulumi.Input.encodeList<ApiErrorBaseResponse, Map<String, dynamic>>(details!, (value) => value.toMap()),
      'innererror': ?innererror == null ? null : innererror!.toMap(),
      'message': ?message,
      'target': ?target,
    };
  }

  factory ApiErrorResponse.fromMap(Map<String, dynamic> map) {
    return ApiErrorResponse(
      code: map['code'] == null ? null : map['code'] as String,
      details: map['details'] == null ? null : pulumi.Input.decodeList<ApiErrorBaseResponse>(map['details'], (value) => ApiErrorBaseResponse.fromMap((value as Map).cast<String, dynamic>())),
      innererror: map['innererror'] == null ? null : InnerErrorResponse.fromMap((map['innererror'] as Map).cast<String, dynamic>()),
      message: map['message'] == null ? null : map['message'] as String,
      target: map['target'] == null ? null : map['target'] as String,
    );
  }
}

