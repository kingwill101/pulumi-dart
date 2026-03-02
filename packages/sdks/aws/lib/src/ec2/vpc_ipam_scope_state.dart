// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcIpamScope resources.
class VpcIpamScopeState {
  /// The Amazon Resource Name (ARN) of the scope.
  final pulumi.Input<String>? arn;
  /// A description for the scope you're creating.
  final pulumi.Input<String>? description;
  /// The ARN of the IPAM for which you're creating this scope.
  final pulumi.Input<String>? ipamArn;
  /// The ID of the IPAM for which you're creating this scope.
  final pulumi.Input<String>? ipamId;
  final pulumi.Input<String>? ipamScopeType;
  /// Defines if the scope is the default scope or not.
  final pulumi.Input<bool>? isDefault;
  /// The number of pools in the scope.
  final pulumi.Input<int>? poolCount;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [VpcIpamScopeState].
  /// [arn] The Amazon Resource Name (ARN) of the scope.
  /// [description] A description for the scope you're creating.
  /// [ipamArn] The ARN of the IPAM for which you're creating this scope.
  /// [ipamId] The ID of the IPAM for which you're creating this scope.
  /// [ipamScopeType] Optional.
  /// [isDefault] Defines if the scope is the default scope or not.
  /// [poolCount] The number of pools in the scope.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  VpcIpamScopeState({
    this.arn,
    this.description,
    this.ipamArn,
    this.ipamId,
    this.ipamScopeType,
    this.isDefault,
    this.poolCount,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'ipamArn': ?ipamArn,
      'ipamId': ?ipamId,
      'ipamScopeType': ?ipamScopeType,
      'isDefault': ?isDefault,
      'poolCount': ?poolCount,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory VpcIpamScopeState.fromMap(Map<String, dynamic> map) {
    return VpcIpamScopeState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      ipamArn: map['ipamArn'] == null ? null : (map['ipamArn'] as String).input(),
      ipamId: map['ipamId'] == null ? null : (map['ipamId'] as String).input(),
      ipamScopeType: map['ipamScopeType'] == null ? null : (map['ipamScopeType'] as String).input(),
      isDefault: map['isDefault'] == null ? null : (map['isDefault'] as bool).input(),
      poolCount: map['poolCount'] == null ? null : (map['poolCount'] as int).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

