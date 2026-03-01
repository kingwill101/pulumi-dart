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
    pulumi.Output<List<String>>? allowedTenants,
    pulumi.Output<String>? authority,
    required pulumi.Output<String> clientId,
    pulumi.Output<String>? clientLibrary,
    required pulumi.Output<String> clientSecret,
    pulumi.Output<String>? identityProviderName,
    pulumi.Output<String>? passwordResetPolicyName,
    pulumi.Output<String>? profileEditingPolicyName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    pulumi.Output<String>? signinPolicyName,
    pulumi.Output<String>? signinTenant,
    pulumi.Output<String>? signupPolicyName,
    pulumi.Output<String>? type,
  }) :
      allowedTenants = pulumi.Input.asOptionalInput<List<String>>(allowedTenants),
      authority = pulumi.Input.asOptionalInput<String>(authority),
      clientId = pulumi.Input.asInput<String>(clientId),
      clientLibrary = pulumi.Input.asOptionalInput<String>(clientLibrary),
      clientSecret = pulumi.Input.asInput<String>(clientSecret),
      identityProviderName = pulumi.Input.asOptionalInput<String>(identityProviderName),
      passwordResetPolicyName = pulumi.Input.asOptionalInput<String>(passwordResetPolicyName),
      profileEditingPolicyName = pulumi.Input.asOptionalInput<String>(profileEditingPolicyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      signinPolicyName = pulumi.Input.asOptionalInput<String>(signinPolicyName),
      signinTenant = pulumi.Input.asOptionalInput<String>(signinTenant),
      signupPolicyName = pulumi.Input.asOptionalInput<String>(signupPolicyName),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      allowedTenants: map['allowedTenants'] == null ? null : pulumi.Output.create<List<String>>((map['allowedTenants'] as List).cast<String>()),
      authority: map['authority'] == null ? null : pulumi.Output.create<String>(map['authority'] as String),
      clientId: pulumi.Output.create<String>(map['clientId'] as String),
      clientLibrary: map['clientLibrary'] == null ? null : pulumi.Output.create<String>(map['clientLibrary'] as String),
      clientSecret: pulumi.Output.create<String>(map['clientSecret'] as String),
      identityProviderName: map['identityProviderName'] == null ? null : pulumi.Output.create<String>(map['identityProviderName'] as String),
      passwordResetPolicyName: map['passwordResetPolicyName'] == null ? null : pulumi.Output.create<String>(map['passwordResetPolicyName'] as String),
      profileEditingPolicyName: map['profileEditingPolicyName'] == null ? null : pulumi.Output.create<String>(map['profileEditingPolicyName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      signinPolicyName: map['signinPolicyName'] == null ? null : pulumi.Output.create<String>(map['signinPolicyName'] as String),
      signinTenant: map['signinTenant'] == null ? null : pulumi.Output.create<String>(map['signinTenant'] as String),
      signupPolicyName: map['signupPolicyName'] == null ? null : pulumi.Output.create<String>(map['signupPolicyName'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

