// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPolicy.
class GetPolicyArgs {
  /// ARN of the IAM policy.
  /// Conflicts with `name` and `path_prefix`.
  final Input<String>? arn;

  /// Name of the IAM policy.
  /// Conflicts with `arn`.
  final Input<String>? name;

  /// Prefix of the path to the IAM policy.
  /// Defaults to a slash (`/`).
  /// Conflicts with `arn`.
  final Input<String>? pathPrefix;

  /// Key-value mapping of tags for the IAM Policy.
  final Input<Map<String, String>>? tags;

  GetPolicyArgs({
    this.arn,
    this.name,
    this.pathPrefix,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final pathPrefixValue = pathPrefix;
    if (pathPrefixValue != null) {
      map['pathPrefix'] = pathPrefixValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyArgs(
      arn: Input.asOptionalInput<String>(map['arn']),
      name: Input.asOptionalInput<String>(map['name']),
      pathPrefix: Input.asOptionalInput<String>(map['pathPrefix']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
