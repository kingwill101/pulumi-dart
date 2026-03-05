// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_identity_provider_args_doc}
/// The set of arguments for IdentityProvider.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_identity_provider_args_doc}
class IdentityProviderArgs {
  /// List of Allowed Tenants when configuring Azure Active Directory login.
  final pulumi.Input<List<String>>? allowedTenants;
  /// OpenID Connect discovery endpoint hostname for AAD or AAD B2C.
  final pulumi.Input<String>? authority;
  /// Client Id of the Application in the external Identity Provider. It is App ID for Facebook login, Client ID for Google login, App ID for Microsoft.
  final pulumi.Input<String> clientId;
  /// The client library to be used in the developer portal. Only applies to AAD and AAD B2C Identity Provider.
  final pulumi.Input<String>? clientLibrary;
  /// Client secret of the Application in external Identity Provider, used to authenticate login request. For example, it is App Secret for Facebook login, API Key for Google login, Public Key for Microsoft. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  final pulumi.Input<String> clientSecret;
  /// Identity Provider Type identifier.
  final pulumi.Input<String>? identityProviderName;
  /// Password Reset Policy Name. Only applies to AAD B2C Identity Provider.
  final pulumi.Input<String>? passwordResetPolicyName;
  /// Profile Editing Policy Name. Only applies to AAD B2C Identity Provider.
  final pulumi.Input<String>? profileEditingPolicyName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Signin Policy Name. Only applies to AAD B2C Identity Provider.
  final pulumi.Input<String>? signinPolicyName;
  /// The TenantId to use instead of Common when logging into Active Directory
  final pulumi.Input<String>? signinTenant;
  /// Signup Policy Name. Only applies to AAD B2C Identity Provider.
  final pulumi.Input<String>? signupPolicyName;
  /// Identity Provider Type identifier.
  final pulumi.Input<String>? type;

  /// Creates a new [IdentityProviderArgs].
  /// [allowedTenants] List of Allowed Tenants when configuring Azure Active Directory login.
  /// [authority] OpenID Connect discovery endpoint hostname for AAD or AAD B2C.
  /// [clientId] Client Id of the Application in the external Identity Provider. It is App ID for Facebook login, Client ID for Google login, App ID for Microsoft.
  /// [clientLibrary] The client library to be used in the developer portal. Only applies to AAD and AAD B2C Identity Provider.
  /// [clientSecret] Client secret of the Application in external Identity Provider, used to authenticate login request. For example, it is App Secret for Facebook login, API Key for Google login, Public Key for Microsoft. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  /// [identityProviderName] Identity Provider Type identifier.
  /// [passwordResetPolicyName] Password Reset Policy Name. Only applies to AAD B2C Identity Provider.
  /// [profileEditingPolicyName] Profile Editing Policy Name. Only applies to AAD B2C Identity Provider.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [signinPolicyName] Signin Policy Name. Only applies to AAD B2C Identity Provider.
  /// [signinTenant] The TenantId to use instead of Common when logging into Active Directory
  /// [signupPolicyName] Signup Policy Name. Only applies to AAD B2C Identity Provider.
  /// [type] Identity Provider Type identifier.
  IdentityProviderArgs({
    this.allowedTenants,
    this.authority,
    required this.clientId,
    this.clientLibrary,
    required this.clientSecret,
    this.identityProviderName,
    this.passwordResetPolicyName,
    this.profileEditingPolicyName,
    required this.resourceGroupName,
    required this.serviceName,
    this.signinPolicyName,
    this.signinTenant,
    this.signupPolicyName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedTenants': ?allowedTenants,
      'authority': ?authority,
      'clientId': clientId,
      'clientLibrary': ?clientLibrary,
      'clientSecret': clientSecret,
      'identityProviderName': ?identityProviderName,
      'passwordResetPolicyName': ?passwordResetPolicyName,
      'profileEditingPolicyName': ?profileEditingPolicyName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'signinPolicyName': ?signinPolicyName,
      'signinTenant': ?signinTenant,
      'signupPolicyName': ?signupPolicyName,
      'type': ?type,
    };
  }

  factory IdentityProviderArgs.fromMap(Map<String, dynamic> map) {
    return IdentityProviderArgs(
      allowedTenants: (() { final guardedValue = map['allowedTenants']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      authority: (() { final guardedValue = map['authority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientLibrary: (() { final guardedValue = map['clientLibrary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
      identityProviderName: (() { final guardedValue = map['identityProviderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordResetPolicyName: (() { final guardedValue = map['passwordResetPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profileEditingPolicyName: (() { final guardedValue = map['profileEditingPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      signinPolicyName: (() { final guardedValue = map['signinPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signinTenant: (() { final guardedValue = map['signinTenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signupPolicyName: (() { final guardedValue = map['signupPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

