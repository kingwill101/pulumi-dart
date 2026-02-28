// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devicefarm_instance_profile_instance_profile_args_doc}
/// The set of arguments for InstanceProfile.
/// {@endtemplate}
/// {@macro pulumi_devicefarm_instance_profile_instance_profile_args_doc}
class InstanceProfileArgs {
  /// The description of the instance profile.
  final pulumi.Input<String>? description;

  /// An array of strings that specifies the list of app packages that should not be cleaned up from the device after a test run.
  final pulumi.Input<List<String>>? excludeAppPackagesFromCleanups;

  /// The name for the instance profile.
  final pulumi.Input<String>? name;

  /// When set to `true`, Device Farm removes app packages after a test run. The default value is `false` for private devices.
  final pulumi.Input<bool>? packageCleanup;

  /// When set to `true`, Device Farm reboots the instance after a test run. The default value is `true`.
  final pulumi.Input<bool>? rebootAfterUse;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [InstanceProfileArgs].
  /// [description] The description of the instance profile.
  /// [excludeAppPackagesFromCleanups] An array of strings that specifies the list of app packages that should not be cleaned up from the device after a test run.
  /// [name] The name for the instance profile.
  /// [packageCleanup] When set to `true`, Device Farm removes app packages after a test run. The default value is `false` for private devices.
  /// [rebootAfterUse] When set to `true`, Device Farm reboots the instance after a test run. The default value is `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  InstanceProfileArgs({
    String? description,
    List<String>? excludeAppPackagesFromCleanups,
    String? name,
    bool? packageCleanup,
    bool? rebootAfterUse,
    String? region,
    Map<String, String>? tags,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        excludeAppPackagesFromCleanups =
            pulumi.Input.asOptionalInput<List<String>>(
                excludeAppPackagesFromCleanups),
        name = pulumi.Input.asOptionalInput<String>(name),
        packageCleanup = pulumi.Input.asOptionalInput<bool>(packageCleanup),
        rebootAfterUse = pulumi.Input.asOptionalInput<bool>(rebootAfterUse),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final excludeAppPackagesFromCleanupsValue = excludeAppPackagesFromCleanups;
    if (excludeAppPackagesFromCleanupsValue != null) {
      map['excludeAppPackagesFromCleanups'] =
          excludeAppPackagesFromCleanupsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final packageCleanupValue = packageCleanup;
    if (packageCleanupValue != null) {
      map['packageCleanup'] = packageCleanupValue;
    }
    final rebootAfterUseValue = rebootAfterUse;
    if (rebootAfterUseValue != null) {
      map['rebootAfterUse'] = rebootAfterUseValue;
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

  factory InstanceProfileArgs.fromMap(Map<String, dynamic> map) {
    return InstanceProfileArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      excludeAppPackagesFromCleanups:
          map['excludeAppPackagesFromCleanups'] == null
              ? null
              : (map['excludeAppPackagesFromCleanups'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      packageCleanup:
          map['packageCleanup'] == null ? null : map['packageCleanup'] as bool,
      rebootAfterUse:
          map['rebootAfterUse'] == null ? null : map['rebootAfterUse'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
