// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RoleAlias resources.
class RoleAliasState {
  /// The name of the role alias.
  final pulumi.Input<String>? alias;
  /// The ARN assigned by AWS to this role alias.
  final pulumi.Input<String>? arn;
  /// The duration of the credential, in seconds. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 900 seconds (15 minutes) to 43200 seconds (12 hours).
  final pulumi.Input<int>? credentialDuration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The identity of the role to which the alias refers.
  final pulumi.Input<String>? roleArn;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [RoleAliasState].
  /// [alias] The name of the role alias.
  /// [arn] The ARN assigned by AWS to this role alias.
  /// [credentialDuration] The duration of the credential, in seconds. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 900 seconds (15 minutes) to 43200 seconds (12 hours).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The identity of the role to which the alias refers.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  RoleAliasState({
    pulumi.Output<String>? alias,
    pulumi.Output<String>? arn,
    pulumi.Output<int>? credentialDuration,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      alias = pulumi.Input.asOptionalInput<String>(alias),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      credentialDuration = pulumi.Input.asOptionalInput<int>(credentialDuration),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'arn': ?arn,
      'credentialDuration': ?credentialDuration,
      'region': ?region,
      'roleArn': ?roleArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory RoleAliasState.fromMap(Map<String, dynamic> map) {
    return RoleAliasState(
      alias: map['alias'] == null ? null : pulumi.Output.create<String>(map['alias'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      credentialDuration: map['credentialDuration'] == null ? null : pulumi.Output.create<int>(map['credentialDuration'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

