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
    String? description,
    int? licenseCount,
    bool? licenseCountHardLimit,
    required String licenseCountingType,
    List<String>? licenseRules,
    String? name,
    String? region,
    Map<String, String>? tags,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        licenseCount = pulumi.Input.asOptionalInput<int>(licenseCount),
        licenseCountHardLimit =
            pulumi.Input.asOptionalInput<bool>(licenseCountHardLimit),
        licenseCountingType = pulumi.Input.asInput<String>(licenseCountingType),
        licenseRules = pulumi.Input.asOptionalInput<List<String>>(licenseRules),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      description:
          map['description'] == null ? null : map['description'] as String,
      licenseCount:
          map['licenseCount'] == null ? null : map['licenseCount'] as int,
      licenseCountHardLimit: map['licenseCountHardLimit'] == null
          ? null
          : map['licenseCountHardLimit'] as bool,
      licenseCountingType: map['licenseCountingType'] as String,
      licenseRules: map['licenseRules'] == null
          ? null
          : (map['licenseRules'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
