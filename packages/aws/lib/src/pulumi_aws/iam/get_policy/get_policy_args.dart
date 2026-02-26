// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPolicy.
class GetPolicyArgs {
  /// ARN of the IAM policy.
  /// Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> and <span pulumi-lang-nodejs="`pathPrefix`" pulumi-lang-dotnet="`PathPrefix`" pulumi-lang-go="`pathPrefix`" pulumi-lang-python="`path_prefix`" pulumi-lang-yaml="`pathPrefix`" pulumi-lang-java="`pathPrefix`">`path_prefix`</span>.
  final Input<String>? arn;

  /// Name of the IAM policy.
  /// Conflicts with <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>.
  final Input<String>? name;

  /// Prefix of the path to the IAM policy.
  /// Defaults to a slash (`/`).
  /// Conflicts with <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>.
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
