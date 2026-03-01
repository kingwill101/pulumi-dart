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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? ipamArn,
    pulumi.Output<String>? ipamId,
    pulumi.Output<String>? ipamScopeType,
    pulumi.Output<bool>? isDefault,
    pulumi.Output<int>? poolCount,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      ipamArn = pulumi.Input.asOptionalInput<String>(ipamArn),
      ipamId = pulumi.Input.asOptionalInput<String>(ipamId),
      ipamScopeType = pulumi.Input.asOptionalInput<String>(ipamScopeType),
      isDefault = pulumi.Input.asOptionalInput<bool>(isDefault),
      poolCount = pulumi.Input.asOptionalInput<int>(poolCount),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ipamArn: map['ipamArn'] == null ? null : pulumi.Output.create<String>(map['ipamArn'] as String),
      ipamId: map['ipamId'] == null ? null : pulumi.Output.create<String>(map['ipamId'] as String),
      ipamScopeType: map['ipamScopeType'] == null ? null : pulumi.Output.create<String>(map['ipamScopeType'] as String),
      isDefault: map['isDefault'] == null ? null : pulumi.Output.create<bool>(map['isDefault'] as bool),
      poolCount: map['poolCount'] == null ? null : pulumi.Output.create<int>(map['poolCount'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

