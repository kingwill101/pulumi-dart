// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_skill_aws_skills.dart';
import 'agentcore_harness_skill_git.dart';
import 'agentcore_harness_skill_s3.dart';

class AgentcoreHarnessSkill {
  /// AWS Skills baked into the harness's underlying runtime. See `awsSkills` Block below.
  final pulumi.Input<AgentcoreHarnessSkillAwsSkills?>? awsSkills;
  /// Git repository source for the skill. See `git` Block below.
  final pulumi.Input<AgentcoreHarnessSkillGit?>? git;
  /// Path to the skill.
  final pulumi.Input<String?>? path;
  /// S3 source for the skill. See `s3` Block below.
  final pulumi.Input<AgentcoreHarnessSkillS3?>? s3;

  /// Creates a new [AgentcoreHarnessSkill].
  /// [awsSkills] AWS Skills baked into the harness's underlying runtime. See `awsSkills` Block below.
  /// [git] Git repository source for the skill. See `git` Block below.
  /// [path] Path to the skill.
  /// [s3] S3 source for the skill. See `s3` Block below.
  const AgentcoreHarnessSkill({
    this.awsSkills,
    this.git,
    this.path,
    this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsSkills': ?pulumi.Input.mapOptionalInputValue<AgentcoreHarnessSkillAwsSkills, Map<String, dynamic>>(awsSkills, (value) => value.toMap()),
      'git': ?pulumi.Input.mapOptionalInputValue<AgentcoreHarnessSkillGit, Map<String, dynamic>>(git, (value) => value.toMap()),
      'path': ?path,
      's3': ?pulumi.Input.mapOptionalInputValue<AgentcoreHarnessSkillS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
    };
  }

  factory AgentcoreHarnessSkill.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessSkill(
      awsSkills: (() { final guardedValue = map['awsSkills']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreHarnessSkillAwsSkills.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      git: (() { final guardedValue = map['git']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreHarnessSkillGit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3: (() { final guardedValue = map['s3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreHarnessSkillS3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
