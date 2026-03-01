// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_licensemanager_license_configuration_license_configuration_args_doc}
/// The set of arguments for LicenseConfiguration.
/// {@endtemplate}
/// {@macro pulumi_licensemanager_license_configuration_license_configuration_args_doc}
class LicenseConfigurationArgs {
  /// Description of the license configuration.
  final pulumi.Input<String>? description;
  /// Number of licenses managed by the license configuration.
  final pulumi.Input<int>? licenseCount;
  /// Sets the number of available licenses as a hard limit.
  final pulumi.Input<bool>? licenseCountHardLimit;
  /// Dimension to use to track license inventory. Specify either `vCPU`, `Instance`, `Core` or `Socket`.
  final pulumi.Input<String> licenseCountingType;
  /// Array of configured License Manager rules.
  final pulumi.Input<List<String>>? licenseRules;
  /// Name of the license configuration.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LicenseConfigurationArgs].
  /// [description] Description of the license configuration.
  /// [licenseCount] Number of licenses managed by the license configuration.
  /// [licenseCountHardLimit] Sets the number of available licenses as a hard limit.
  /// [licenseCountingType] Dimension to use to track license inventory. Specify either `vCPU`, `Instance`, `Core` or `Socket`.
  /// [licenseRules] Array of configured License Manager rules.
  /// [name] Name of the license configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  LicenseConfigurationArgs({
    pulumi.Output<String>? description,
    pulumi.Output<int>? licenseCount,
    pulumi.Output<bool>? licenseCountHardLimit,
    required pulumi.Output<String> licenseCountingType,
    pulumi.Output<List<String>>? licenseRules,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      licenseCount = pulumi.Input.asOptionalInput<int>(licenseCount),
      licenseCountHardLimit = pulumi.Input.asOptionalInput<bool>(licenseCountHardLimit),
      licenseCountingType = pulumi.Input.asInput<String>(licenseCountingType),
      licenseRules = pulumi.Input.asOptionalInput<List<String>>(licenseRules),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'licenseCount': ?licenseCount,
      'licenseCountHardLimit': ?licenseCountHardLimit,
      'licenseCountingType': licenseCountingType,
      'licenseRules': ?licenseRules,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory LicenseConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return LicenseConfigurationArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      licenseCount: map['licenseCount'] == null ? null : pulumi.Output.create<int>(map['licenseCount'] as int),
      licenseCountHardLimit: map['licenseCountHardLimit'] == null ? null : pulumi.Output.create<bool>(map['licenseCountHardLimit'] as bool),
      licenseCountingType: pulumi.Output.create<String>(map['licenseCountingType'] as String),
      licenseRules: map['licenseRules'] == null ? null : pulumi.Output.create<List<String>>((map['licenseRules'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

