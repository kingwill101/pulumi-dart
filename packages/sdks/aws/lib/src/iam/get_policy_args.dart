// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_get_policy_get_policy_args_doc}
/// Arguments for getPolicy.
/// {@endtemplate}
/// {@macro pulumi_iam_get_policy_get_policy_args_doc}
class GetPolicyArgs {
  /// ARN of the IAM policy.
  /// Conflicts with `name` and `path_prefix`.
  final pulumi.Input<String>? arn;
  /// Name of the IAM policy.
  /// Conflicts with `arn`.
  final pulumi.Input<String>? name;
  /// Prefix of the path to the IAM policy.
  /// Defaults to a slash (`/`).
  /// Conflicts with `arn`.
  final pulumi.Input<String>? pathPrefix;
  /// Key-value mapping of tags for the IAM Policy.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetPolicyArgs].
  /// [arn] ARN of the IAM policy.
  /// [name] Name of the IAM policy.
  /// [pathPrefix] Prefix of the path to the IAM policy.
  /// [tags] Key-value mapping of tags for the IAM Policy.
  GetPolicyArgs({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? pathPrefix,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      name = pulumi.Input.asOptionalInput<String>(name),
      pathPrefix = pulumi.Input.asOptionalInput<String>(pathPrefix),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'pathPrefix': ?pathPrefix,
      'tags': ?tags,
    };
  }

  factory GetPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyArgs(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pathPrefix: map['pathPrefix'] == null ? null : pulumi.Output.create<String>(map['pathPrefix'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

