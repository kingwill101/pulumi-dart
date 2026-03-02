// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Error details
class ErrorInfoResponse {
  /// Error code.
  final pulumi.Input<String> code;
  /// Error message.
  final pulumi.Input<String> message;

  /// Creates a new [ErrorInfoResponse].
  /// [code] Error code.
  /// [message] Error message.
  ErrorInfoResponse({
    required this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
    };
  }

  factory ErrorInfoResponse.fromMap(Map<String, dynamic> map) {
    return ErrorInfoResponse(
      code: (map['code'] as String).input(),
      message: (map['message'] as String).input(),
    );
  }
}

