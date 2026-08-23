// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_get_jwtauthenticator_args_doc}
/// Arguments for getJWTAuthenticator.
/// {@endtemplate}
/// {@macro pulumi_containerservice_get_jwtauthenticator_args_doc}
class GetJWTAuthenticatorArgs {
  /// The name of the JWT authenticator.
  final pulumi.Input<String> jwtAuthenticatorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the managed cluster resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetJWTAuthenticatorArgs].
  /// [jwtAuthenticatorName] The name of the JWT authenticator.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the managed cluster resource.
  const GetJWTAuthenticatorArgs({
    required this.jwtAuthenticatorName,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jwtAuthenticatorName': jwtAuthenticatorName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetJWTAuthenticatorArgs.fromMap(Map<String, dynamic> map) {
    return GetJWTAuthenticatorArgs(
      jwtAuthenticatorName: pulumi.Input.fromValue(map['jwtAuthenticatorName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
