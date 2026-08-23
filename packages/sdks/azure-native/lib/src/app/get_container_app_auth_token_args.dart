// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_container_app_auth_token_args_doc}
/// Arguments for getContainerAppAuthToken.
/// {@endtemplate}
/// {@macro pulumi_app_get_container_app_auth_token_args_doc}
class GetContainerAppAuthTokenArgs {
  /// Name of the Container App.
  final pulumi.Input<String> containerAppName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetContainerAppAuthTokenArgs].
  /// [containerAppName] Name of the Container App.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetContainerAppAuthTokenArgs({
    required this.containerAppName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppName': containerAppName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetContainerAppAuthTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetContainerAppAuthTokenArgs(
      containerAppName: pulumi.Input.fromValue(map['containerAppName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
