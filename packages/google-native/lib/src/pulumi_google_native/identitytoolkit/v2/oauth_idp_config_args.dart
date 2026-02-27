// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_oauth_response_type.dart';

/// The set of arguments for OauthIdpConfig.
class OauthIdpConfigArgs {
  /// The client id of an OAuth client.
  final pulumi.Input<String>? clientId;

  /// The client secret of the OAuth client, to enable OIDC code flow.
  final pulumi.Input<String>? clientSecret;

  /// The config's display name set by developers.
  final pulumi.Input<String>? displayName;

  /// True if allows the user to sign in with the provider.
  final pulumi.Input<bool>? enabled;

  /// For OIDC Idps, the issuer identifier.
  final pulumi.Input<String>? issuer;

  /// The name of the OAuthIdpConfig resource, for example: 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'. Ignored during create requests.
  final pulumi.Input<String>? name;

  /// The id to use for this config.
  final pulumi.Input<String>? oauthIdpConfigId;
  final pulumi.Input<String>? project;

  /// The response type to request for in the OAuth authorization flow. You can set either `id_token` or `code` to true, but not both. Setting both types to be simultaneously true (`{code: true, id_token: true}`) is not yet supported.
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2OAuthResponseType>?
      responseType;
  final pulumi.Input<String> tenantId;

  OauthIdpConfigArgs({
    this.clientId,
    this.clientSecret,
    this.displayName,
    this.enabled,
    this.issuer,
    this.name,
    this.oauthIdpConfigId,
    this.project,
    this.responseType,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientIdValue = clientId;
    if (clientIdValue != null) {
      map['clientId'] = clientIdValue;
    }
    final clientSecretValue = clientSecret;
    if (clientSecretValue != null) {
      map['clientSecret'] = clientSecretValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final issuerValue = issuer;
    if (issuerValue != null) {
      map['issuer'] = issuerValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final oauthIdpConfigIdValue = oauthIdpConfigId;
    if (oauthIdpConfigIdValue != null) {
      map['oauthIdpConfigId'] = oauthIdpConfigIdValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final responseTypeValue = responseType;
    if (responseTypeValue != null) {
      map['responseType'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudIdentitytoolkitAdminV2OAuthResponseType,
          Map<String, dynamic>>(responseTypeValue, (value) => value.toMap());
    }
    map['tenantId'] = tenantId;
    return map;
  }

  factory OauthIdpConfigArgs.fromMap(Map<String, dynamic> map) {
    return OauthIdpConfigArgs(
      clientId: pulumi.Input.asOptionalInput<String>(map['clientId']),
      clientSecret: pulumi.Input.asOptionalInput<String>(map['clientSecret']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      issuer: pulumi.Input.asOptionalInput<String>(map['issuer']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      oauthIdpConfigId:
          pulumi.Input.asOptionalInput<String>(map['oauthIdpConfigId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      responseType: pulumi.Input.asOptionalInput<
              GoogleCloudIdentitytoolkitAdminV2OAuthResponseType>(
          map['responseType']),
      tenantId: pulumi.Input.asInput<String>(map['tenantId']),
    );
  }
}
