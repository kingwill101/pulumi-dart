// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessSkillAwsSkills {
  /// List of glob patterns to filter allowed skills (e.g., `["core-skills/*"]`).
  final pulumi.Input<List<String>?>? paths;

  /// Creates a new [AgentcoreHarnessSkillAwsSkills].
  /// [paths] List of glob patterns to filter allowed skills (e.g., `["core-skills/*"]`).
  const AgentcoreHarnessSkillAwsSkills({
    this.paths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paths': ?paths,
    };
  }

  factory AgentcoreHarnessSkillAwsSkills.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessSkillAwsSkills(
      paths: (() { final guardedValue = map['paths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
