// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'validation_message_response.dart';

/// Validation summary object.
class ValidationSummaryItemResponse {
  /// Validation messages.
  final pulumi.Input<List<ValidationMessageResponse>>? messages;
  /// Validation status for migration.
  final pulumi.Input<String>? state;
  /// Validation type.
  final pulumi.Input<String>? type;

  /// Creates a new [ValidationSummaryItemResponse].
  /// [messages] Validation messages.
  /// [state] Validation status for migration.
  /// [type] Validation type.
  const ValidationSummaryItemResponse({
    this.messages,
    this.state,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messages': ?pulumi.Input.mapOptionalInputValue<List<ValidationMessageResponse>, List<Map<String, dynamic>>>(messages, (value) => pulumi.Input.encodeList<ValidationMessageResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?state,
      'type': ?type,
    };
  }

  factory ValidationSummaryItemResponse.fromMap(Map<String, dynamic> map) {
    return ValidationSummaryItemResponse(
      messages: (() { final guardedValue = map['messages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ValidationMessageResponse>(guardedValue, (value) => ValidationMessageResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

