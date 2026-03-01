// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIdentityProvider.
class GetIdentityProviderResult {
  /// List of Allowed Tenants when configuring Azure Active Directory login.
  final List<String>? allowedTenants;
  /// OpenID Connect discovery endpoint hostname for AAD or AAD B2C.
  final String? authority;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Client Id of the Application in the external Identity Provider. It is App ID for Facebook login, Client ID for Google login, App ID for Microsoft.
  final String clientId;
  /// The client library to be used in the developer portal. Only applies to AAD and AAD B2C Identity Provider.
  final String? clientLibrary;
  /// Client secret of the Application in external Identity Provider, used to authenticate login request. For example, it is App Secret for Facebook login, API Key for Google login, Public Key for Microsoft. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  final String? clientSecret;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
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
  final String type;

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
  GetIdentityProviderResult({
    this.allowedTenants,
    this.authority,
    required this.azureApiVersion,
    required this.clientId,
    this.clientLibrary,
    this.clientSecret,
    required this.id,
    required this.name,
    this.passwordResetPolicyName,
    this.profileEditingPolicyName,
    this.signinPolicyName,
    this.signinTenant,
    this.signupPolicyName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedTenants': ?allowedTenants,
      'authority': ?authority,
      'azureApiVersion': azureApiVersion,
      'clientId': clientId,
      'clientLibrary': ?clientLibrary,
      'clientSecret': ?clientSecret,
      'id': id,
      'name': name,
      'passwordResetPolicyName': ?passwordResetPolicyName,
      'profileEditingPolicyName': ?profileEditingPolicyName,
      'signinPolicyName': ?signinPolicyName,
      'signinTenant': ?signinTenant,
      'signupPolicyName': ?signupPolicyName,
      'type': type,
    };
  }

  factory GetIdentityProviderResult.fromMap(Map<String, dynamic> map) {
    return GetIdentityProviderResult(
      allowedTenants: map['allowedTenants'] == null ? null : (map['allowedTenants'] as List).cast<String>(),
      authority: map['authority'] == null ? null : map['authority'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      clientId: map['clientId'] as String,
      clientLibrary: map['clientLibrary'] == null ? null : map['clientLibrary'] as String,
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      passwordResetPolicyName: map['passwordResetPolicyName'] == null ? null : map['passwordResetPolicyName'] as String,
      profileEditingPolicyName: map['profileEditingPolicyName'] == null ? null : map['profileEditingPolicyName'] as String,
      signinPolicyName: map['signinPolicyName'] == null ? null : map['signinPolicyName'] as String,
      signinTenant: map['signinTenant'] == null ? null : map['signinTenant'] as String,
      signupPolicyName: map['signupPolicyName'] == null ? null : map['signupPolicyName'] as String,
      type: map['type'] as String,
    );
  }
}

