// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'typed_error_info_response.dart';

/// Error definition.
class ErrorDefinitionResponse {
  /// Additional scenario specific error details.
  final List<TypedErrorInfoResponse> additionalInfo;
  /// Service specific error code which serves as the substatus for the HTTP error code.
  final String code;
  /// Internal error details.
  final List<ErrorDefinitionResponse> details;
  /// Description of the error.
  final String message;
  /// The target of the error.
  final String target;

  /// Creates a new [ErrorDefinitionResponse].
  /// [additionalInfo] Additional scenario specific error details.
  /// [code] Service specific error code which serves as the substatus for the HTTP error code.
  /// [details] Internal error details.
  /// [message] Description of the error.
  /// [target] The target of the error.
  ErrorDefinitionResponse({
    required this.additionalInfo,
    required this.code,
    required this.details,
    required this.message,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalInfo': pulumi.Input.encodeList<TypedErrorInfoResponse, Map<String, dynamic>>(additionalInfo, (value) => value.toMap()),
      'code': code,
      'details': pulumi.Input.encodeList<ErrorDefinitionResponse, Map<String, dynamic>>(details, (value) => value.toMap()),
      'message': message,
      'target': target,
    };
  }

  factory ErrorDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ErrorDefinitionResponse(
      additionalInfo: pulumi.Input.decodeList<TypedErrorInfoResponse>(map['additionalInfo'], (value) => TypedErrorInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      code: map['code'] as String,
      details: pulumi.Input.decodeList<ErrorDefinitionResponse>(map['details'], (value) => ErrorDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
      message: map['message'] as String,
      target: map['target'] as String,
    );
  }
}

