// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for LicenseConfiguration.
class LicenseConfigurationArgs {
  /// Description of the license configuration.
  final Input<String>? description;

  /// Number of licenses managed by the license configuration.
  final Input<int>? licenseCount;

  /// Sets the number of available licenses as a hard limit.
  final Input<bool>? licenseCountHardLimit;

  /// Dimension to use to track license inventory. Specify either `vCPU`, `Instance`, `Core` or `Socket`.
  final Input<String> licenseCountingType;

  /// Array of configured License Manager rules.
  final Input<List<String>>? licenseRules;

  /// Name of the license configuration.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
      description: Input.asOptionalInput<String>(map['description']),
      licenseCount: Input.asOptionalInput<int>(map['licenseCount']),
      licenseCountHardLimit:
          Input.asOptionalInput<bool>(map['licenseCountHardLimit']),
      licenseCountingType: Input.asInput<String>(map['licenseCountingType']),
      licenseRules: Input.asOptionalInput<List<String>>(map['licenseRules']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
