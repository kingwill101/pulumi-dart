// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectSourceAuth {
  /// The ARN of the resource to use for authentication. For type `CODECONNECTIONS` this should be
  /// an AWS CodeStar Connection. For type `SECRETS_MANAGER` this should be an AWS Secrets Manager secret.
  final pulumi.Input<String> resource;
  /// The type of authentication AWS CodeBuild should perform. Valid values are `CODECONNECTIONS` and
  /// `SECRETS_MANAGER`.
  final pulumi.Input<String> type;

  /// Creates a new [ProjectSourceAuth].
  /// [resource] The ARN of the resource to use for authentication. For type `CODECONNECTIONS` this should be
  /// [type] The type of authentication AWS CodeBuild should perform. Valid values are `CODECONNECTIONS` and
  const ProjectSourceAuth({
    required this.resource,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': resource,
      'type': type,
    };
  }

  factory ProjectSourceAuth.fromMap(Map<String, dynamic> map) {
    return ProjectSourceAuth(
      resource: pulumi.Input.fromValue(map['resource'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
