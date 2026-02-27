// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LicenseConfiguration.
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
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final licenseCountValue = licenseCount;
    if (licenseCountValue != null) {
      map['licenseCount'] = licenseCountValue;
    }
    final licenseCountHardLimitValue = licenseCountHardLimit;
    if (licenseCountHardLimitValue != null) {
      map['licenseCountHardLimit'] = licenseCountHardLimitValue;
    }
    map['licenseCountingType'] = licenseCountingType;
    final licenseRulesValue = licenseRules;
    if (licenseRulesValue != null) {
      map['licenseRules'] = licenseRulesValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory LicenseConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return LicenseConfigurationArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      licenseCount: pulumi.Input.asOptionalInput<int>(map['licenseCount']),
      licenseCountHardLimit:
          pulumi.Input.asOptionalInput<bool>(map['licenseCountHardLimit']),
      licenseCountingType:
          pulumi.Input.asInput<String>(map['licenseCountingType']),
      licenseRules:
          pulumi.Input.asOptionalInput<List<String>>(map['licenseRules']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
