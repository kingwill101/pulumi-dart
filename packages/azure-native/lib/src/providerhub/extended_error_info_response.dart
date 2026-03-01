// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'typed_error_info_response.dart';

/// Error information.
class ExtendedErrorInfoResponse {
  /// The additional error information.
  final List<TypedErrorInfoResponse>? additionalInfo;
  /// The error code.
  final String? code;
  /// The error details.
  final List<ExtendedErrorInfoResponse>? details;
  /// The error message.
  final String? message;
  /// The target of the error.
  final String? target;

  /// Creates a new [ExtendedErrorInfoResponse].
  /// [additionalInfo] The additional error information.
  /// [code] The error code.
  /// [details] The error details.
  /// [message] The error message.
  /// [target] The target of the error.
  ExtendedErrorInfoResponse({
    this.additionalInfo,
    this.code,
    this.details,
    this.message,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalInfo': ?additionalInfo == null ? null : pulumi.Input.encodeList<TypedErrorInfoResponse, Map<String, dynamic>>(additionalInfo!, (value) => value.toMap()),
      'code': ?code,
      'details': ?details == null ? null : pulumi.Input.encodeList<ExtendedErrorInfoResponse, Map<String, dynamic>>(details!, (value) => value.toMap()),
      'message': ?message,
      'target': ?target,
    };
  }

  factory ExtendedErrorInfoResponse.fromMap(Map<String, dynamic> map) {
    return ExtendedErrorInfoResponse(
      additionalInfo: map['additionalInfo'] == null ? null : pulumi.Input.decodeList<TypedErrorInfoResponse>(map['additionalInfo'], (value) => TypedErrorInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      code: map['code'] == null ? null : map['code'] as String,
      details: map['details'] == null ? null : pulumi.Input.decodeList<ExtendedErrorInfoResponse>(map['details'], (value) => ExtendedErrorInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      message: map['message'] == null ? null : map['message'] as String,
      target: map['target'] == null ? null : map['target'] as String,
    );
  }
}

