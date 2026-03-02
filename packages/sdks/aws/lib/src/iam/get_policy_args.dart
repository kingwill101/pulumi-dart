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
    this.arn,
    this.name,
    this.pathPrefix,
    this.tags,
  });

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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      pathPrefix: map['pathPrefix'] == null ? null : ((map['pathPrefix'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

