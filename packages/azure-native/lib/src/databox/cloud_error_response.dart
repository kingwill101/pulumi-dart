// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_error_info_response.dart';

/// Provides additional information about an http error response.
class CloudErrorResponse {
  /// Gets or sets additional error info.
  final List<AdditionalErrorInfoResponse> additionalInfo;
  /// Error code.
  final String? code;
  /// Gets or sets details for the error.
  final List<CloudErrorResponse> details;
  /// The error message parsed from the body of the http error response.
  final String? message;
  /// Gets or sets the target of the error.
  final String? target;

  /// Creates a new [CloudErrorResponse].
  /// [additionalInfo] Gets or sets additional error info.
  /// [code] Error code.
  /// [details] Gets or sets details for the error.
  /// [message] The error message parsed from the body of the http error response.
  /// [target] Gets or sets the target of the error.
  CloudErrorResponse({
    required this.additionalInfo,
    this.code,
    required this.details,
    this.message,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalInfo': pulumi.Input.encodeList<AdditionalErrorInfoResponse, Map<String, dynamic>>(additionalInfo, (value) => value.toMap()),
      'code': ?code,
      'details': pulumi.Input.encodeList<CloudErrorResponse, Map<String, dynamic>>(details, (value) => value.toMap()),
      'message': ?message,
      'target': ?target,
    };
  }

  factory CloudErrorResponse.fromMap(Map<String, dynamic> map) {
    return CloudErrorResponse(
      additionalInfo: pulumi.Input.decodeList<AdditionalErrorInfoResponse>(map['additionalInfo'], (value) => AdditionalErrorInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      code: map['code'] == null ? null : map['code'] as String,
      details: pulumi.Input.decodeList<CloudErrorResponse>(map['details'], (value) => CloudErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      message: map['message'] == null ? null : map['message'] as String,
      target: map['target'] == null ? null : map['target'] as String,
    );
  }
}

