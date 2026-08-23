// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessSkill {
  /// Path to the skill.
  final pulumi.Input<String> path;

  /// Creates a new [AgentcoreHarnessSkill].
  /// [path] Path to the skill.
  const AgentcoreHarnessSkill({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory AgentcoreHarnessSkill.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessSkill(
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}
