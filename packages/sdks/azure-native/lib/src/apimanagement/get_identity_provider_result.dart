// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIdentityProvider.
class GetIdentityProviderResult {
  /// List of Allowed Tenants when configuring Azure Active Directory login.
  final List<String>? allowedTenants;
  /// OpenID Connect discovery endpoint hostname for AAD or AAD B2C.
  final String? authority;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Client Id of the Application in the external Identity Provider. It is App ID for Facebook login, Client ID for Google login, App ID for Microsoft.
  final String? clientId;
  /// The client library to be used in the developer portal. Only applies to AAD and AAD B2C Identity Provider.
  final String? clientLibrary;
  /// Client secret of the Application in external Identity Provider, used to authenticate login request. For example, it is App Secret for Facebook login, API Key for Google login, Public Key for Microsoft. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  final String? clientSecret;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// Password Reset Policy Name. Only applies to AAD B2C Identity Provider.
  final String? passwordResetPolicyName;
  /// Profile Editing Policy Name. Only applies to AAD B2C Identity Provider.
  final String? profileEditingPolicyName;
  /// Signin Policy Name. Only applies to AAD B2C Identity Provider.
  final String? signinPolicyName;
  /// The TenantId to use instead of Common when logging into Active Directory
  final String? signinTenant;
  /// Signup Policy Name. Only applies to AAD B2C Identity Provider.
  final String? signupPolicyName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetIdentityProviderResult].
  /// [allowedTenants] List of Allowed Tenants when configuring Azure Active Directory login.
  /// [authority] OpenID Connect discovery endpoint hostname for AAD or AAD B2C.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clientId] Client Id of the Application in the external Identity Provider. It is App ID for Facebook login, Client ID for Google login, App ID for Microsoft.
  /// [clientLibrary] The client library to be used in the developer portal. Only applies to AAD and AAD B2C Identity Provider.
  /// [clientSecret] Client secret of the Application in external Identity Provider, used to authenticate login request. For example, it is App Secret for Facebook login, API Key for Google login, Public Key for Microsoft. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [passwordResetPolicyName] Password Reset Policy Name. Only applies to AAD B2C Identity Provider.
  /// [profileEditingPolicyName] Profile Editing Policy Name. Only applies to AAD B2C Identity Provider.
  /// [signinPolicyName] Signin Policy Name. Only applies to AAD B2C Identity Provider.
  /// [signinTenant] The TenantId to use instead of Common when logging into Active Directory
  /// [signupPolicyName] Signup Policy Name. Only applies to AAD B2C Identity Provider.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetIdentityProviderResult({
    this.allowedTenants,
    this.authority,
    this.azureApiVersion,
    this.clientId,
    this.clientLibrary,
    this.clientSecret,
    this.id,
    this.name,
    this.passwordResetPolicyName,
    this.profileEditingPolicyName,
    this.signinPolicyName,
    this.signinTenant,
    this.signupPolicyName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedTenants': ?allowedTenants,
      'authority': ?authority,
      'azureApiVersion': ?azureApiVersion,
      'clientId': ?clientId,
      'clientLibrary': ?clientLibrary,
      'clientSecret': ?clientSecret,
      'id': ?id,
      'name': ?name,
      'passwordResetPolicyName': ?passwordResetPolicyName,
      'profileEditingPolicyName': ?profileEditingPolicyName,
      'signinPolicyName': ?signinPolicyName,
      'signinTenant': ?signinTenant,
      'signupPolicyName': ?signupPolicyName,
      'type': ?type,
    };
  }

  factory GetIdentityProviderResult.fromMap(Map<String, dynamic> map) {
    return GetIdentityProviderResult(
      allowedTenants: (() { final guardedValue = map['allowedTenants']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      authority: (() { final guardedValue = map['authority']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientLibrary: (() { final guardedValue = map['clientLibrary']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      passwordResetPolicyName: (() { final guardedValue = map['passwordResetPolicyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      profileEditingPolicyName: (() { final guardedValue = map['profileEditingPolicyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      signinPolicyName: (() { final guardedValue = map['signinPolicyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      signinTenant: (() { final guardedValue = map['signinTenant']; if (guardedValue == null) return null; return guardedValue as String; })(),
      signupPolicyName: (() { final guardedValue = map['signupPolicyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
