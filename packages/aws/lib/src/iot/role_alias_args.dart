// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_role_alias_role_alias_args_doc}
/// The set of arguments for RoleAlias.
/// {@endtemplate}
/// {@macro pulumi_iot_role_alias_role_alias_args_doc}
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

  /// Creates a new [RoleAliasArgs].
  /// [alias] The name of the role alias.
  /// [credentialDuration] The duration of the credential, in seconds. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 900 seconds (15 minutes) to 43200 seconds (12 hours).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The identity of the role to which the alias refers.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  RoleAliasArgs({
    required String alias,
    int? credentialDuration,
    String? region,
    required String roleArn,
    Map<String, String>? tags,
  }) :
      alias = pulumi.Input.asInput<String>(alias),
      credentialDuration = pulumi.Input.asOptionalInput<int>(credentialDuration),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asInput<String>(roleArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'credentialDuration': ?credentialDuration,
      'region': ?region,
      'roleArn': roleArn,
      'tags': ?tags,
    };
  }

  factory RoleAliasArgs.fromMap(Map<String, dynamic> map) {
    return RoleAliasArgs(
      alias: map['alias'] as String,
      credentialDuration: map['credentialDuration'] == null ? null : map['credentialDuration'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

