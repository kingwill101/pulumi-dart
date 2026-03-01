// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Acl resources.
class AclState {
  /// The ARN of the ACL.
  final pulumi.Input<String>? arn;
  /// The minimum engine version supported by the ACL.
  final pulumi.Input<String>? minimumEngineVersion;
  /// Name of the ACL. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Set of MemoryDB user names to be included in this ACL.
  final pulumi.Input<List<String>>? userNames;

  /// Creates a new [AclState].
  /// [arn] The ARN of the ACL.
  /// [minimumEngineVersion] The minimum engine version supported by the ACL.
  /// [name] Name of the ACL. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [userNames] Set of MemoryDB user names to be included in this ACL.
  AclState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? minimumEngineVersion,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<List<String>>? userNames,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      minimumEngineVersion = pulumi.Input.asOptionalInput<String>(minimumEngineVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      userNames = pulumi.Input.asOptionalInput<List<String>>(userNames);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'minimumEngineVersion': ?minimumEngineVersion,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'userNames': ?userNames,
    };
  }

  factory AclState.fromMap(Map<String, dynamic> map) {
    return AclState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      minimumEngineVersion: map['minimumEngineVersion'] == null ? null : pulumi.Output.create<String>(map['minimumEngineVersion'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      userNames: map['userNames'] == null ? null : pulumi.Output.create<List<String>>((map['userNames'] as List).cast<String>()),
    );
  }
}

