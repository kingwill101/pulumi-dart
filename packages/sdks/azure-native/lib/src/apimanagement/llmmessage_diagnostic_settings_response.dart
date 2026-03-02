// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Diagnostic settings for Large Language Models Messages
class LLMMessageDiagnosticSettingsResponse {
  /// Maximum size of message to logs in bytes. The default size is 32KB.
  final pulumi.Input<int>? maxSizeInBytes;
  /// Specifies which message should be logged. Currently there is only 'all' option.
  final pulumi.Input<String>? messages;

  /// Creates a new [LLMMessageDiagnosticSettingsResponse].
  /// [maxSizeInBytes] Maximum size of message to logs in bytes. The default size is 32KB.
  /// [messages] Specifies which message should be logged. Currently there is only 'all' option.
  LLMMessageDiagnosticSettingsResponse({
    this.maxSizeInBytes,
    this.messages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxSizeInBytes': ?maxSizeInBytes,
      'messages': ?messages,
    };
  }

  factory LLMMessageDiagnosticSettingsResponse.fromMap(Map<String, dynamic> map) {
    return LLMMessageDiagnosticSettingsResponse(
      maxSizeInBytes: map['maxSizeInBytes'] == null ? null : (map['maxSizeInBytes']! as int).input(),
      messages: map['messages'] == null ? null : (map['messages']! as String).input(),
    );
  }
}

