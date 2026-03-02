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
    this.arn,
    this.description,
    this.licenseCount,
    this.licenseCountHardLimit,
    this.licenseCountingType,
    this.licenseRules,
    this.name,
    this.ownerAccountId,
    this.region,
    this.tags,
    this.tagsAll,
  });

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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      licenseCount: map['licenseCount'] == null ? null : (map['licenseCount'] as int).input(),
      licenseCountHardLimit: map['licenseCountHardLimit'] == null ? null : (map['licenseCountHardLimit'] as bool).input(),
      licenseCountingType: map['licenseCountingType'] == null ? null : (map['licenseCountingType'] as String).input(),
      licenseRules: map['licenseRules'] == null ? null : ((map['licenseRules'] as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      ownerAccountId: map['ownerAccountId'] == null ? null : (map['ownerAccountId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

