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
    this.description,
    this.excludeAppPackagesFromCleanups,
    this.name,
    this.packageCleanup,
    this.rebootAfterUse,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'excludeAppPackagesFromCleanups': ?excludeAppPackagesFromCleanups,
      'name': ?name,
      'packageCleanup': ?packageCleanup,
      'rebootAfterUse': ?rebootAfterUse,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory InstanceProfileArgs.fromMap(Map<String, dynamic> map) {
    return InstanceProfileArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      excludeAppPackagesFromCleanups: (() {
        final guardedValue = map['excludeAppPackagesFromCleanups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      packageCleanup: (() {
        final guardedValue = map['packageCleanup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      rebootAfterUse: (() {
        final guardedValue = map['rebootAfterUse'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
