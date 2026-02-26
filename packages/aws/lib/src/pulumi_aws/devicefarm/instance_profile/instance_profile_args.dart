// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for InstanceProfile.
class InstanceProfileArgs {
  /// The description of the instance profile.
  final Input<String>? description;

  /// An array of strings that specifies the list of app packages that should not be cleaned up from the device after a test run.
  final Input<List<String>>? excludeAppPackagesFromCleanups;

  /// The name for the instance profile.
  final Input<String>? name;

  /// When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, Device Farm removes app packages after a test run. The default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> for private devices.
  final Input<bool>? packageCleanup;

  /// When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, Device Farm reboots the instance after a test run. The default value is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? rebootAfterUse;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  InstanceProfileArgs({
    this.description,
    this.excludeAppPackagesFromCleanups,
    this.name,
    this.packageCleanup,
    this.rebootAfterUse,
    this.region,
    this.tags,
  });

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
      description: Input.asOptionalInput<String>(map['description']),
      excludeAppPackagesFromCleanups: Input.asOptionalInput<List<String>>(
          map['excludeAppPackagesFromCleanups']),
      name: Input.asOptionalInput<String>(map['name']),
      packageCleanup: Input.asOptionalInput<bool>(map['packageCleanup']),
      rebootAfterUse: Input.asOptionalInput<bool>(map['rebootAfterUse']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
