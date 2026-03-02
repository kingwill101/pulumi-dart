// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InstanceProfile resources.
class InstanceProfileState {
  /// The Amazon Resource Name of this instance profile.
  final pulumi.Input<String>? arn;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [InstanceProfileState].
  /// [arn] The Amazon Resource Name of this instance profile.
  /// [description] The description of the instance profile.
  /// [excludeAppPackagesFromCleanups] An array of strings that specifies the list of app packages that should not be cleaned up from the device after a test run.
  /// [name] The name for the instance profile.
  /// [packageCleanup] When set to `true`, Device Farm removes app packages after a test run. The default value is `false` for private devices.
  /// [rebootAfterUse] When set to `true`, Device Farm reboots the instance after a test run. The default value is `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  InstanceProfileState({
    this.arn,
    this.description,
    this.excludeAppPackagesFromCleanups,
    this.name,
    this.packageCleanup,
    this.rebootAfterUse,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'excludeAppPackagesFromCleanups': ?excludeAppPackagesFromCleanups,
      'name': ?name,
      'packageCleanup': ?packageCleanup,
      'rebootAfterUse': ?rebootAfterUse,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory InstanceProfileState.fromMap(Map<String, dynamic> map) {
    return InstanceProfileState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      excludeAppPackagesFromCleanups: map['excludeAppPackagesFromCleanups'] == null ? null : (((map['excludeAppPackagesFromCleanups'] as List).cast<String>()).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      packageCleanup: map['packageCleanup'] == null ? null : ((map['packageCleanup'] as bool).input()).input(),
      rebootAfterUse: map['rebootAfterUse'] == null ? null : ((map['rebootAfterUse'] as bool).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

