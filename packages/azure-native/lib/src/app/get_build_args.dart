// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_build_args_doc}
/// Arguments for getBuild.
/// {@endtemplate}
/// {@macro pulumi_app_get_build_args_doc}
class GetBuildArgs {
  /// The name of a build.
  final pulumi.Input<String> buildName;
  /// The name of the builder.
  final pulumi.Input<String> builderName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBuildArgs].
  /// [buildName] The name of a build.
  /// [builderName] The name of the builder.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetBuildArgs({
    required String buildName,
    required String builderName,
    required String resourceGroupName,
  }) :
      buildName = pulumi.Input.asInput<String>(buildName),
      builderName = pulumi.Input.asInput<String>(builderName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildName': buildName,
      'builderName': builderName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBuildArgs.fromMap(Map<String, dynamic> map) {
    return GetBuildArgs(
      buildName: map['buildName'] as String,
      builderName: map['builderName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

