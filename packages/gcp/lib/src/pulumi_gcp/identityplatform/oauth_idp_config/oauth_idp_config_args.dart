// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../oauth_idp_config_response_type/oauth_idp_config_response_type.dart';

/// The set of arguments for OauthIdpConfig.
class OauthIdpConfigArgs {
  /// The client id of an OAuth client.
  final Input<String> clientId;

  /// The client secret of the OAuth client, to enable OIDC code flow.
  final Input<String>? clientSecret;

  /// Human friendly display name.
  final Input<String>? displayName;

  /// If this config allows users to sign in with the provider.
  final Input<bool>? enabled;

  /// For OIDC Idps, the issuer identifier.
  final Input<String> issuer;

  /// The name of the OauthIdpConfig. Must start with `oidc.`.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The response type to request for in the OAuth authorization flow.
  /// You can set either idToken or code to true, but not both.
  /// Setting both types to be simultaneously true ({code: true, idToken: true}) is not yet supported.
  /// Structure is documented below.
  final Input<OauthIdpConfigResponseType>? responseType;

  OauthIdpConfigArgs({
    required this.clientId,
    this.clientSecret,
    this.displayName,
    this.enabled,
    required this.issuer,
    this.name,
    this.project,
    this.responseType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientId'] = clientId;
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
    map['issuer'] = issuer;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final responseTypeValue = responseType;
    if (responseTypeValue != null) {
      map['responseType'] = Input.mapOptionalInputValue<
          OauthIdpConfigResponseType,
          Map<String, dynamic>>(responseTypeValue, (value) => value.toMap());
    }
    return map;
  }

  factory OauthIdpConfigArgs.fromMap(Map<String, dynamic> map) {
    return OauthIdpConfigArgs(
      clientId: Input.asInput<String>(map['clientId']),
      clientSecret: Input.asOptionalInput<String>(map['clientSecret']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      issuer: Input.asInput<String>(map['issuer']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      responseType: Input.asOptionalInput<OauthIdpConfigResponseType>(
          map['responseType']),
    );
  }
}
