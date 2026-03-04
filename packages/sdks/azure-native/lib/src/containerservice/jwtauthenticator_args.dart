// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jwtauthenticator_properties.dart';

/// {@template pulumi_containerservice_jwtauthenticator_args_doc}
/// The set of arguments for JWTAuthenticator.
/// {@endtemplate}
/// {@macro pulumi_containerservice_jwtauthenticator_args_doc}
class JWTAuthenticatorArgs {
  /// The name of the JWT authenticator.
  final pulumi.Input<String>? jwtAuthenticatorName;

  /// The properties of JWTAuthenticator. For details on how to configure the properties of a JWT authenticator, please refer to the Kubernetes documentation: https://kubernetes.io/docs/reference/access-authn-authz/authentication/#using-authentication-configuration. Please note that not all fields available in the Kubernetes documentation are supported by AKS. For troubleshooting, please see https://aka.ms/aks-external-issuers-docs.
  final pulumi.Input<JWTAuthenticatorProperties> properties;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the managed cluster resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [JWTAuthenticatorArgs].
  /// [jwtAuthenticatorName] The name of the JWT authenticator.
  /// [properties] The properties of JWTAuthenticator. For details on how to configure the properties of a JWT authenticator, please refer to the Kubernetes documentation: https://kubernetes.io/docs/reference/access-authn-authz/authentication/#using-authentication-configuration. Please note that not all fields available in the Kubernetes documentation are supported by AKS. For troubleshooting, please see https://aka.ms/aks-external-issuers-docs.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the managed cluster resource.
  JWTAuthenticatorArgs({
    this.jwtAuthenticatorName,
    required this.properties,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jwtAuthenticatorName': ?jwtAuthenticatorName,
      'properties':
          pulumi.Input.mapInputValue<
            JWTAuthenticatorProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory JWTAuthenticatorArgs.fromMap(Map<String, dynamic> map) {
    return JWTAuthenticatorArgs(
      jwtAuthenticatorName: (() {
        final guardedValue = map['jwtAuthenticatorName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: pulumi.Input.fromValue(
        JWTAuthenticatorProperties.fromMap(
          (map['properties']! as Map).cast<String, dynamic>(),
        ),
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
