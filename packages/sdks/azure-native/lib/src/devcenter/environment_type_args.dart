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
      devCenterName: (map['devCenterName'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      environmentTypeName: map['environmentTypeName'] == null ? null : (map['environmentTypeName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

