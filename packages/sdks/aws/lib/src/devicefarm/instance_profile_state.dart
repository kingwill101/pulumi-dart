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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? excludeAppPackagesFromCleanups,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? packageCleanup,
    pulumi.Output<bool>? rebootAfterUse,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      excludeAppPackagesFromCleanups = pulumi.Input.asOptionalInput<List<String>>(excludeAppPackagesFromCleanups),
      name = pulumi.Input.asOptionalInput<String>(name),
      packageCleanup = pulumi.Input.asOptionalInput<bool>(packageCleanup),
      rebootAfterUse = pulumi.Input.asOptionalInput<bool>(rebootAfterUse),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      excludeAppPackagesFromCleanups: map['excludeAppPackagesFromCleanups'] == null ? null : pulumi.Output.create<List<String>>((map['excludeAppPackagesFromCleanups'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      packageCleanup: map['packageCleanup'] == null ? null : pulumi.Output.create<bool>(map['packageCleanup'] as bool),
      rebootAfterUse: map['rebootAfterUse'] == null ? null : pulumi.Output.create<bool>(map['rebootAfterUse'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

