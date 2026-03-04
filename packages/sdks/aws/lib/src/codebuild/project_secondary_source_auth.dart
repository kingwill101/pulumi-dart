// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectSecondarySourceAuth {
  /// The ARN of the resource to use for authentication. For type `CODECONNECTIONS` this should be
  /// an AWS CodeStar Connection. For type `SECRETS_MANAGER` this should be an AWS Secrets Manager secret.
  final pulumi.Input<String> resource;

  /// The type of authentication AWS CodeBuild should perform. Valid values are `CODECONNECTIONS` and
  /// `SECRETS_MANAGER`.
  final pulumi.Input<String> type;

  /// Creates a new [ProjectSecondarySourceAuth].
  /// [resource] The ARN of the resource to use for authentication. For type `CODECONNECTIONS` this should be
  /// [type] The type of authentication AWS CodeBuild should perform. Valid values are `CODECONNECTIONS` and
  ProjectSecondarySourceAuth({required this.resource, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resource': resource, 'type': type};
  }

  factory ProjectSecondarySourceAuth.fromMap(Map<String, dynamic> map) {
    return ProjectSecondarySourceAuth(
      resource: pulumi.Input.fromValue(map['resource'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
