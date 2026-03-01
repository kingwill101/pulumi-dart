// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Body of the error response returned from the API.
class ErrorEntityResponse {
  /// Basic error code.
  final String? code;
  /// Error Details.
  final List<ErrorEntityResponse>? details;
  /// Type of error.
  final String? extendedCode;
  /// Inner errors.
  final List<ErrorEntityResponse>? innerErrors;
  /// Any details of the error.
  final String? message;
  /// Message template.
  final String? messageTemplate;
  /// Parameters for the template.
  final List<String>? parameters;
  /// The error target.
  final String? target;

  /// Creates a new [ErrorEntityResponse].
  /// [code] Basic error code.
  /// [details] Error Details.
  /// [extendedCode] Type of error.
  /// [innerErrors] Inner errors.
  /// [message] Any details of the error.
  /// [messageTemplate] Message template.
  /// [parameters] Parameters for the template.
  /// [target] The error target.
  ErrorEntityResponse({
    this.code,
    this.details,
    this.extendedCode,
    this.innerErrors,
    this.message,
    this.messageTemplate,
    this.parameters,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'details': ?details == null ? null : pulumi.Input.encodeList<ErrorEntityResponse, Map<String, dynamic>>(details!, (value) => value.toMap()),
      'extendedCode': ?extendedCode,
      'innerErrors': ?innerErrors == null ? null : pulumi.Input.encodeList<ErrorEntityResponse, Map<String, dynamic>>(innerErrors!, (value) => value.toMap()),
      'message': ?message,
      'messageTemplate': ?messageTemplate,
      'parameters': ?parameters,
      'target': ?target,
    };
  }

  factory ErrorEntityResponse.fromMap(Map<String, dynamic> map) {
    return ErrorEntityResponse(
      code: map['code'] == null ? null : map['code'] as String,
      details: map['details'] == null ? null : pulumi.Input.decodeList<ErrorEntityResponse>(map['details'], (value) => ErrorEntityResponse.fromMap((value as Map).cast<String, dynamic>())),
      extendedCode: map['extendedCode'] == null ? null : map['extendedCode'] as String,
      innerErrors: map['innerErrors'] == null ? null : pulumi.Input.decodeList<ErrorEntityResponse>(map['innerErrors'], (value) => ErrorEntityResponse.fromMap((value as Map).cast<String, dynamic>())),
      message: map['message'] == null ? null : map['message'] as String,
      messageTemplate: map['messageTemplate'] == null ? null : map['messageTemplate'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as List).cast<String>(),
      target: map['target'] == null ? null : map['target'] as String,
    );
  }
}

