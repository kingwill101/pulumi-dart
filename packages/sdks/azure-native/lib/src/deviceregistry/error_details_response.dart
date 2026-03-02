// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the error details properties.
class ErrorDetailsResponse {
  /// Multi-part error code for classification and root causing of errors (ex: 400.200.100.432).
  final pulumi.Input<String> code;
  /// Unique identifier for the transaction to aid in debugging.
  final pulumi.Input<String> correlationId;
  /// Human-readable helpful detailed text context for debugging (ex: “The following mechanisms are supported...”).
  final pulumi.Input<String> info;
  /// Human-readable helpful error message to provide additional context for error (ex: “Authentication method not supported”).
  final pulumi.Input<String> message;

  /// Creates a new [ErrorDetailsResponse].
  /// [code] Multi-part error code for classification and root causing of errors (ex: 400.200.100.432).
  /// [correlationId] Unique identifier for the transaction to aid in debugging.
  /// [info] Human-readable helpful detailed text context for debugging (ex: “The following mechanisms are supported...”).
  /// [message] Human-readable helpful error message to provide additional context for error (ex: “Authentication method not supported”).
  ErrorDetailsResponse({
    required this.code,
    required this.correlationId,
    required this.info,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'correlationId': correlationId,
      'info': info,
      'message': message,
    };
  }

  factory ErrorDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ErrorDetailsResponse(
      code: (map['code'] as String).input(),
      correlationId: (map['correlationId'] as String).input(),
      info: (map['info'] as String).input(),
      message: (map['message'] as String).input(),
    );
  }
}

