// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Default error model
class ErrorModelResponse {
  /// Gets or sets the code.
  final String code;
  /// Gets or sets the details.
  final List<ErrorModelResponse> details;
  /// Gets or sets the messages.
  final String message;
  /// Gets or sets the target.
  final String target;

  /// Creates a new [ErrorModelResponse].
  /// [code] Gets or sets the code.
  /// [details] Gets or sets the details.
  /// [message] Gets or sets the messages.
  /// [target] Gets or sets the target.
  ErrorModelResponse({
    required this.code,
    required this.details,
    required this.message,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'details': pulumi.Input.encodeList<ErrorModelResponse, Map<String, dynamic>>(details, (value) => value.toMap()),
      'message': message,
      'target': target,
    };
  }

  factory ErrorModelResponse.fromMap(Map<String, dynamic> map) {
    return ErrorModelResponse(
      code: map['code'] as String,
      details: pulumi.Input.decodeList<ErrorModelResponse>(map['details'], (value) => ErrorModelResponse.fromMap((value as Map).cast<String, dynamic>())),
      message: map['message'] as String,
      target: map['target'] as String,
    );
  }
}

