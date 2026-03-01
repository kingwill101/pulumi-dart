// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LicenseConfiguration resources.
class LicenseConfigurationState {
  /// The license configuration ARN.
  final pulumi.Input<String>? arn;
  /// Description of the license configuration.
  final pulumi.Input<String>? description;
  /// Number of licenses managed by the license configuration.
  final pulumi.Input<int>? licenseCount;
  /// Sets the number of available licenses as a hard limit.
  final pulumi.Input<bool>? licenseCountHardLimit;
  /// Dimension to use to track license inventory. Specify either `vCPU`, `Instance`, `Core` or `Socket`.
  final pulumi.Input<String>? licenseCountingType;
  /// Array of configured License Manager rules.
  final pulumi.Input<List<String>>? licenseRules;
  /// Name of the license configuration.
  final pulumi.Input<String>? name;
  /// Account ID of the owner of the license configuration.
  final pulumi.Input<String>? ownerAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [LicenseConfigurationState].
  /// [arn] The license configuration ARN.
  /// [description] Description of the license configuration.
  /// [licenseCount] Number of licenses managed by the license configuration.
  /// [licenseCountHardLimit] Sets the number of available licenses as a hard limit.
  /// [licenseCountingType] Dimension to use to track license inventory. Specify either `vCPU`, `Instance`, `Core` or `Socket`.
  /// [licenseRules] Array of configured License Manager rules.
  /// [name] Name of the license configuration.
  /// [ownerAccountId] Account ID of the owner of the license configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  LicenseConfigurationState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<int>? licenseCount,
    pulumi.Output<bool>? licenseCountHardLimit,
    pulumi.Output<String>? licenseCountingType,
    pulumi.Output<List<String>>? licenseRules,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ownerAccountId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      licenseCount = pulumi.Input.asOptionalInput<int>(licenseCount),
      licenseCountHardLimit = pulumi.Input.asOptionalInput<bool>(licenseCountHardLimit),
      licenseCountingType = pulumi.Input.asOptionalInput<String>(licenseCountingType),
      licenseRules = pulumi.Input.asOptionalInput<List<String>>(licenseRules),
      name = pulumi.Input.asOptionalInput<String>(name),
      ownerAccountId = pulumi.Input.asOptionalInput<String>(ownerAccountId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'licenseCount': ?licenseCount,
      'licenseCountHardLimit': ?licenseCountHardLimit,
      'licenseCountingType': ?licenseCountingType,
      'licenseRules': ?licenseRules,
      'name': ?name,
      'ownerAccountId': ?ownerAccountId,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory LicenseConfigurationState.fromMap(Map<String, dynamic> map) {
    return LicenseConfigurationState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      licenseCount: map['licenseCount'] == null ? null : pulumi.Output.create<int>(map['licenseCount'] as int),
      licenseCountHardLimit: map['licenseCountHardLimit'] == null ? null : pulumi.Output.create<bool>(map['licenseCountHardLimit'] as bool),
      licenseCountingType: map['licenseCountingType'] == null ? null : pulumi.Output.create<String>(map['licenseCountingType'] as String),
      licenseRules: map['licenseRules'] == null ? null : pulumi.Output.create<List<String>>((map['licenseRules'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ownerAccountId: map['ownerAccountId'] == null ? null : pulumi.Output.create<String>(map['ownerAccountId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

