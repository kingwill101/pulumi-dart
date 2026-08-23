// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessToolConfigAgentcoreBrowser {
  /// ARN of the AgentCore browser resource.
  final pulumi.Input<String>? browserArn;

  /// Creates a new [AgentcoreHarnessToolConfigAgentcoreBrowser].
  /// [browserArn] ARN of the AgentCore browser resource.
  const AgentcoreHarnessToolConfigAgentcoreBrowser({
    this.browserArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'browserArn': ?browserArn,
    };
  }

  factory AgentcoreHarnessToolConfigAgentcoreBrowser.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessToolConfigAgentcoreBrowser(
      browserArn: (() { final guardedValue = map['browserArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
