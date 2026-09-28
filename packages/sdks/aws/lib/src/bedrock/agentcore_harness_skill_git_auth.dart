// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessSkillGitAuth {
  /// ARN of the credential in AgentCore Identity containing the password or personal access token.
  final pulumi.Input<String> credentialArn;
  /// Username for authentication. Defaults to `oauth2` if not specified.
  final pulumi.Input<String?>? username;

  /// Creates a new [AgentcoreHarnessSkillGitAuth].
  /// [credentialArn] ARN of the credential in AgentCore Identity containing the password or personal access token.
  /// [username] Username for authentication. Defaults to `oauth2` if not specified.
  const AgentcoreHarnessSkillGitAuth({
    required this.credentialArn,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialArn': credentialArn,
      'username': ?username,
    };
  }

  factory AgentcoreHarnessSkillGitAuth.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessSkillGitAuth(
      credentialArn: pulumi.Input.fromValue(map['credentialArn'] as String),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
