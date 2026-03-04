// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_list_build_auth_token_args_doc}
/// Arguments for listBuildAuthToken.
/// {@endtemplate}
/// {@macro pulumi_app_list_build_auth_token_args_doc}
class ListBuildAuthTokenArgs {
  /// The name of a build.
  final pulumi.Input<String> buildName;

  /// The name of the builder.
  final pulumi.Input<String> builderName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListBuildAuthTokenArgs].
  /// [buildName] The name of a build.
  /// [builderName] The name of the builder.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListBuildAuthTokenArgs({
    required this.buildName,
    required this.builderName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildName': buildName,
      'builderName': builderName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListBuildAuthTokenArgs.fromMap(Map<String, dynamic> map) {
    return ListBuildAuthTokenArgs(
      buildName: pulumi.Input.fromValue(map['buildName'] as String),
      builderName: pulumi.Input.fromValue(map['builderName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
