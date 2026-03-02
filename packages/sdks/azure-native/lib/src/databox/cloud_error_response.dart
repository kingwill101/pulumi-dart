// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_error_info_response.dart';

/// Provides additional information about an http error response.
class CloudErrorResponse {
  /// Gets or sets additional error info.
  final pulumi.Input<List<AdditionalErrorInfoResponse>> additionalInfo;
  /// Error code.
  final pulumi.Input<String>? code;
  /// Gets or sets details for the error.
  final pulumi.Input<List<CloudErrorResponse>> details;
  /// The error message parsed from the body of the http error response.
  final pulumi.Input<String>? message;
  /// Gets or sets the target of the error.
  final pulumi.Input<String>? target;

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
      'additionalInfo': pulumi.Input.mapInputValue<List<AdditionalErrorInfoResponse>, List<Map<String, dynamic>>>(additionalInfo, (value) => pulumi.Input.encodeList<AdditionalErrorInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'code': ?code,
      'details': pulumi.Input.mapInputValue<List<CloudErrorResponse>, List<Map<String, dynamic>>>(details, (value) => pulumi.Input.encodeList<CloudErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'message': ?message,
      'target': ?target,
    };
  }

  factory CloudErrorResponse.fromMap(Map<String, dynamic> map) {
    return CloudErrorResponse(
      additionalInfo: (pulumi.Input.decodeList<AdditionalErrorInfoResponse>(map['additionalInfo'], (value) => AdditionalErrorInfoResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      code: map['code'] == null ? null : (map['code']! as String).input(),
      details: (pulumi.Input.decodeList<CloudErrorResponse>(map['details'], (value) => CloudErrorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      target: map['target'] == null ? null : (map['target']! as String).input(),
    );
  }
}

