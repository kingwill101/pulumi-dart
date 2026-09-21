// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessSkillS3 {
  /// S3 URI of the skill source. Must begin with `s3://`.
  final pulumi.Input<String> uri;

  /// Creates a new [AgentcoreHarnessSkillS3].
  /// [uri] S3 URI of the skill source. Must begin with `s3://`.
  const AgentcoreHarnessSkillS3({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': uri,
    };
  }

  factory AgentcoreHarnessSkillS3.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessSkillS3(
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
