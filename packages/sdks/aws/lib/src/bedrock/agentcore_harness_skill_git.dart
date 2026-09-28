// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_skill_git_auth.dart';

class AgentcoreHarnessSkillGit {
  /// Authentication configuration for private repositories. See `auth` Block below.
  final pulumi.Input<AgentcoreHarnessSkillGitAuth?>? auth;
  /// Subdirectory within the repository containing the skill.
  final pulumi.Input<String?>? path;
  /// HTTPS URL of the git repository.
  final pulumi.Input<String> url;

  /// Creates a new [AgentcoreHarnessSkillGit].
  /// [auth] Authentication configuration for private repositories. See `auth` Block below.
  /// [path] Subdirectory within the repository containing the skill.
  /// [url] HTTPS URL of the git repository.
  const AgentcoreHarnessSkillGit({
    this.auth,
    this.path,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?pulumi.Input.mapOptionalInputValue<AgentcoreHarnessSkillGitAuth, Map<String, dynamic>>(auth, (value) => value.toMap()),
      'path': ?path,
      'url': url,
    };
  }

  factory AgentcoreHarnessSkillGit.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessSkillGit(
      auth: (() { final guardedValue = map['auth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreHarnessSkillGitAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
