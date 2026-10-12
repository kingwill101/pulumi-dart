// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessSystemPrompt {
  /// Text content of the system prompt.
  final pulumi.Input<String?>? text;

  /// Creates a new [AgentcoreHarnessSystemPrompt].
  /// [text] Text content of the system prompt.
  const AgentcoreHarnessSystemPrompt({
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': ?text,
    };
  }

  factory AgentcoreHarnessSystemPrompt.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessSystemPrompt(
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
