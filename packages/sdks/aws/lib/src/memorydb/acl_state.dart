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
    this.arn,
    this.minimumEngineVersion,
    this.name,
    this.namePrefix,
    this.region,
    this.tags,
    this.tagsAll,
    this.userNames,
  });

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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      minimumEngineVersion: map['minimumEngineVersion'] == null ? null : (map['minimumEngineVersion'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namePrefix: map['namePrefix'] == null ? null : (map['namePrefix'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      userNames: map['userNames'] == null ? null : ((map['userNames'] as List).cast<String>()).input(),
    );
  }
}

