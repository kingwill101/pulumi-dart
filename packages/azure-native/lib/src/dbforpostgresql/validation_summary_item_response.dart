// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'validation_message_response.dart';

/// Validation summary object.
class ValidationSummaryItemResponse {
  /// Validation messages.
  final List<ValidationMessageResponse>? messages;
  /// Validation status for migration.
  final String? state;
  /// Validation type.
  final String? type;

  /// Creates a new [ValidationSummaryItemResponse].
  /// [messages] Validation messages.
  /// [state] Validation status for migration.
  /// [type] Validation type.
  ValidationSummaryItemResponse({
    this.messages,
    this.state,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messages': ?messages == null ? null : pulumi.Input.encodeList<ValidationMessageResponse, Map<String, dynamic>>(messages!, (value) => value.toMap()),
      'state': ?state,
      'type': ?type,
    };
  }

  factory ValidationSummaryItemResponse.fromMap(Map<String, dynamic> map) {
    return ValidationSummaryItemResponse(
      messages: map['messages'] == null ? null : pulumi.Input.decodeList<ValidationMessageResponse>(map['messages'], (value) => ValidationMessageResponse.fromMap((value as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : map['state'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

