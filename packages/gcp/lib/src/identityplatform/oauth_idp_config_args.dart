// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oauth_idp_config_response_type.dart';

/// {@template pulumi_identityplatform_oauth_idp_config_oauth_idp_config_args_doc}
/// The set of arguments for OauthIdpConfig.
/// {@endtemplate}
/// {@macro pulumi_identityplatform_oauth_idp_config_oauth_idp_config_args_doc}
class OauthIdpConfigArgs {
  /// The client id of an OAuth client.
  final pulumi.Input<String> clientId;

  /// The client secret of the OAuth client, to enable OIDC code flow.
  final pulumi.Input<String>? clientSecret;

  /// Human friendly display name.
  final pulumi.Input<String>? displayName;

  /// If this config allows users to sign in with the provider.
  final pulumi.Input<bool>? enabled;

  /// For OIDC Idps, the issuer identifier.
  final pulumi.Input<String> issuer;

  /// The name of the OauthIdpConfig. Must start with `oidc.`.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The response type to request for in the OAuth authorization flow.
  /// You can set either idToken or code to true, but not both.
  /// Setting both types to be simultaneously true ({code: true, idToken: true}) is not yet supported.
  /// Structure is documented below.
  final pulumi.Input<OauthIdpConfigResponseType>? responseType;

  /// Creates a new [OauthIdpConfigArgs].
  /// [clientId] The client id of an OAuth client.
  /// [clientSecret] The client secret of the OAuth client, to enable OIDC code flow.
  /// [displayName] Human friendly display name.
  /// [enabled] If this config allows users to sign in with the provider.
  /// [issuer] For OIDC Idps, the issuer identifier.
  /// [name] The name of the OauthIdpConfig. Must start with `oidc.`.
  /// [project] The ID of the project in which the resource belongs.
  /// [responseType] The response type to request for in the OAuth authorization flow.
  OauthIdpConfigArgs({
    required String clientId,
    String? clientSecret,
    String? displayName,
    bool? enabled,
    required String issuer,
    String? name,
    String? project,
    OauthIdpConfigResponseType? responseType,
  }) : clientId = pulumi.Input.asInput<String>(clientId),
       clientSecret = pulumi.Input.asOptionalInput<String>(clientSecret),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       enabled = pulumi.Input.asOptionalInput<bool>(enabled),
       issuer = pulumi.Input.asInput<String>(issuer),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       responseType = pulumi.Input.asOptionalInput<OauthIdpConfigResponseType>(
         responseType,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': ?clientSecret,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'issuer': issuer,
      'name': ?name,
      'project': ?project,
      'responseType':
          ?pulumi.Input.mapOptionalInputValue<
            OauthIdpConfigResponseType,
            Map<String, dynamic>
          >(responseType, (value) => value.toMap()),
    };
  }

  factory OauthIdpConfigArgs.fromMap(Map<String, dynamic> map) {
    return OauthIdpConfigArgs(
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] == null
          ? null
          : map['clientSecret'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      issuer: map['issuer'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      responseType: map['responseType'] == null
          ? null
          : OauthIdpConfigResponseType.fromMap(
              (map['responseType'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
