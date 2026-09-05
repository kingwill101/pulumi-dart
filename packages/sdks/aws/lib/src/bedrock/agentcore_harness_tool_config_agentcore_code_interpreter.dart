// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessToolConfigAgentcoreCodeInterpreter {
  /// ARN of the AgentCore code interpreter resource.
  final pulumi.Input<String?>? codeInterpreterArn;

  /// Creates a new [AgentcoreHarnessToolConfigAgentcoreCodeInterpreter].
  /// [codeInterpreterArn] ARN of the AgentCore code interpreter resource.
  const AgentcoreHarnessToolConfigAgentcoreCodeInterpreter({
    this.codeInterpreterArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeInterpreterArn': ?codeInterpreterArn,
    };
  }

  factory AgentcoreHarnessToolConfigAgentcoreCodeInterpreter.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessToolConfigAgentcoreCodeInterpreter(
      codeInterpreterArn: (() { final guardedValue = map['codeInterpreterArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
