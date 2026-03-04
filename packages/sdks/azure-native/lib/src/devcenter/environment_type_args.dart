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
    required this.devCenterName,
    this.displayName,
    this.environmentTypeName,
    required this.resourceGroupName,
    this.tags,
  });

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
      devCenterName: pulumi.Input.fromValue(map['devCenterName'] as String),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      environmentTypeName: (() {
        final guardedValue = map['environmentTypeName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
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
