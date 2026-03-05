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
    this.description,
    this.licenseCount,
    this.licenseCountHardLimit,
    required this.licenseCountingType,
    this.licenseRules,
    this.name,
    this.region,
    this.tags,
  });

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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseCount: (() { final guardedValue = map['licenseCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      licenseCountHardLimit: (() { final guardedValue = map['licenseCountHardLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      licenseCountingType: pulumi.Input.fromValue(map['licenseCountingType'] as String),
      licenseRules: (() { final guardedValue = map['licenseRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

