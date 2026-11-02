// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnforcedGuardrailConfigurationSelectiveContentGuarding {
  /// Selective guarding mode for user messages. Valid values: `SELECTIVE`, `COMPREHENSIVE`.
  final pulumi.Input<String?>? messages;
  /// Selective guarding mode for system prompts. Valid values: `SELECTIVE`, `COMPREHENSIVE`.
  final pulumi.Input<String?>? system;

  /// Creates a new [EnforcedGuardrailConfigurationSelectiveContentGuarding].
  /// [messages] Selective guarding mode for user messages. Valid values: `SELECTIVE`, `COMPREHENSIVE`.
  /// [system] Selective guarding mode for system prompts. Valid values: `SELECTIVE`, `COMPREHENSIVE`.
  const EnforcedGuardrailConfigurationSelectiveContentGuarding({
    this.messages,
    this.system,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messages': ?messages,
      'system': ?system,
    };
  }

  factory EnforcedGuardrailConfigurationSelectiveContentGuarding.fromMap(Map<String, dynamic> map) {
    return EnforcedGuardrailConfigurationSelectiveContentGuarding(
      messages: (() { final guardedValue = map['messages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      system: (() { final guardedValue = map['system']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
