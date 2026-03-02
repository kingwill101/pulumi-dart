// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KxUser resources.
class KxUserState {
  /// Amazon Resource Name (ARN) identifier of the KX user.
  final pulumi.Input<String>? arn;
  /// Unique identifier for the KX environment.
  final pulumi.Input<String>? environmentId;
  /// IAM role ARN to be associated with the user.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? iamRole;
  /// A unique identifier for the user.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [KxUserState].
  /// [arn] Amazon Resource Name (ARN) identifier of the KX user.
  /// [environmentId] Unique identifier for the KX environment.
  /// [iamRole] IAM role ARN to be associated with the user.
  /// [name] A unique identifier for the user.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  KxUserState({
    this.arn,
    this.environmentId,
    this.iamRole,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'environmentId': ?environmentId,
      'iamRole': ?iamRole,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory KxUserState.fromMap(Map<String, dynamic> map) {
    return KxUserState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      environmentId: map['environmentId'] == null ? null : ((map['environmentId'] as String).input()).input(),
      iamRole: map['iamRole'] == null ? null : ((map['iamRole'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

