// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_environment_type_args_doc}
/// The set of arguments for EnvironmentType.
/// {@endtemplate}
/// {@macro pulumi_devcenter_environment_type_args_doc}
class EnvironmentTypeArgs {
  /// The name of the devcenter.
  final pulumi.Input<String> devCenterName;
  /// The display name of the environment type.
  final pulumi.Input<String>? displayName;
  /// The name of the environment type.
  final pulumi.Input<String>? environmentTypeName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EnvironmentTypeArgs].
  /// [devCenterName] The name of the devcenter.
  /// [displayName] The display name of the environment type.
  /// [environmentTypeName] The name of the environment type.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  EnvironmentTypeArgs({
    required pulumi.Output<String> devCenterName,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? environmentTypeName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      devCenterName = pulumi.Input.asInput<String>(devCenterName),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      environmentTypeName = pulumi.Input.asOptionalInput<String>(environmentTypeName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterName': devCenterName,
      'displayName': ?displayName,
      'environmentTypeName': ?environmentTypeName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory EnvironmentTypeArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentTypeArgs(
      devCenterName: pulumi.Output.create<String>(map['devCenterName'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      environmentTypeName: map['environmentTypeName'] == null ? null : pulumi.Output.create<String>(map['environmentTypeName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

