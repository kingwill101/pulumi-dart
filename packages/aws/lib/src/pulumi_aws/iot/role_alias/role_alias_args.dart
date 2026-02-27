// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RoleAlias.
class RoleAliasArgs {
  /// The name of the role alias.
  final pulumi.Input<String> alias;

  /// The duration of the credential, in seconds. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 900 seconds (15 minutes) to 43200 seconds (12 hours).
  final pulumi.Input<int>? credentialDuration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The identity of the role to which the alias refers.
  final pulumi.Input<String> roleArn;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  RoleAliasArgs({
    required this.alias,
    this.credentialDuration,
    this.region,
    required this.roleArn,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alias'] = alias;
    final credentialDurationValue = credentialDuration;
    if (credentialDurationValue != null) {
      map['credentialDuration'] = credentialDurationValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory RoleAliasArgs.fromMap(Map<String, dynamic> map) {
    return RoleAliasArgs(
      alias: pulumi.Input.asInput<String>(map['alias']),
      credentialDuration:
          pulumi.Input.asOptionalInput<int>(map['credentialDuration']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asInput<String>(map['roleArn']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
