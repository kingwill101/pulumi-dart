// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_details_response.dart';

/// Defines the status config error properties.
class StatusErrorResponse {
  /// Error code for classification of errors (ex: '400', '404', '500', etc.).
  final pulumi.Input<String> code;

  /// Array of error details that describe the status of each error.
  final pulumi.Input<List<ErrorDetailsResponse>> details;

  /// Human-readable helpful error message to provide additional context for error (e.g.,: “Capability ID 'foo' does not exist”).
  final pulumi.Input<String> message;

  /// Creates a new [StatusErrorResponse].
  /// [code] Error code for classification of errors (ex: '400', '404', '500', etc.).
  /// [details] Array of error details that describe the status of each error.
  /// [message] Human-readable helpful error message to provide additional context for error (e.g.,: “Capability ID 'foo' does not exist”).
  StatusErrorResponse({
    required this.code,
    required this.details,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'details':
          pulumi.Input.mapInputValue<
            List<ErrorDetailsResponse>,
            List<Map<String, dynamic>>
          >(
            details,
            (value) =>
                pulumi.Input.encodeList<
                  ErrorDetailsResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'message': message,
    };
  }

  factory StatusErrorResponse.fromMap(Map<String, dynamic> map) {
    return StatusErrorResponse(
      code: pulumi.Input.fromValue(map['code'] as String),
      details: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ErrorDetailsResponse>(
          map['details']!,
          (value) => ErrorDetailsResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}
