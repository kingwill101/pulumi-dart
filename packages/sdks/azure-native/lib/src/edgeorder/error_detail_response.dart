// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_additional_info_response.dart';

/// The error detail.
class ErrorDetailResponse {
  /// The error additional info.
  final pulumi.Input<List<ErrorAdditionalInfoResponse>> additionalInfo;
  /// The error code.
  final pulumi.Input<String> code;
  /// The error details.
  final pulumi.Input<List<ErrorDetailResponse>> details;
  /// The error message.
  final pulumi.Input<String> message;
  /// The error target.
  final pulumi.Input<String> target;

  /// Creates a new [ErrorDetailResponse].
  /// [additionalInfo] The error additional info.
  /// [code] The error code.
  /// [details] The error details.
  /// [message] The error message.
  /// [target] The error target.
  const ErrorDetailResponse({
    required this.additionalInfo,
    required this.code,
    required this.details,
    required this.message,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalInfo': pulumi.Input.mapInputValue<List<ErrorAdditionalInfoResponse>, List<Map<String, dynamic>>>(additionalInfo, (value) => pulumi.Input.encodeList<ErrorAdditionalInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'code': code,
      'details': pulumi.Input.mapInputValue<List<ErrorDetailResponse>, List<Map<String, dynamic>>>(details, (value) => pulumi.Input.encodeList<ErrorDetailResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'message': message,
      'target': target,
    };
  }

  factory ErrorDetailResponse.fromMap(Map<String, dynamic> map) {
    return ErrorDetailResponse(
      additionalInfo: pulumi.Input.fromValue(pulumi.Input.decodeList<ErrorAdditionalInfoResponse>(map['additionalInfo']!, (value) => ErrorAdditionalInfoResponse.fromMap((value as Map).cast<String, dynamic>()))),
      code: pulumi.Input.fromValue(map['code'] as String),
      details: pulumi.Input.fromValue(pulumi.Input.decodeList<ErrorDetailResponse>(map['details']!, (value) => ErrorDetailResponse.fromMap((value as Map).cast<String, dynamic>()))),
      message: pulumi.Input.fromValue(map['message'] as String),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}
