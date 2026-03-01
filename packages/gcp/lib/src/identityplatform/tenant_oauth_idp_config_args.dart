// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identityplatform_tenant_oauth_idp_config_tenant_oauth_idp_config_args_doc}
/// The set of arguments for TenantOauthIdpConfig.
/// {@endtemplate}
/// {@macro pulumi_identityplatform_tenant_oauth_idp_config_tenant_oauth_idp_config_args_doc}
class TenantOauthIdpConfigArgs {
  /// The client id of an OAuth client.
  final pulumi.Input<String> clientId;
  /// The client secret of the OAuth client, to enable OIDC code flow.
  final pulumi.Input<String>? clientSecret;
  /// Human friendly display name.
  final pulumi.Input<String> displayName;
  /// If this config allows users to sign in with the provider.
  final pulumi.Input<bool>? enabled;
  /// For OIDC Idps, the issuer identifier.
  final pulumi.Input<String> issuer;
  /// The name of the OauthIdpConfig. Must start with `oidc.`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The name of the tenant where this OIDC IDP configuration resource exists
  final pulumi.Input<String> tenant;

  /// Creates a new [TenantOauthIdpConfigArgs].
  /// [clientId] The client id of an OAuth client.
  /// [clientSecret] The client secret of the OAuth client, to enable OIDC code flow.
  /// [displayName] Human friendly display name.
  /// [enabled] If this config allows users to sign in with the provider.
  /// [issuer] For OIDC Idps, the issuer identifier.
  /// [name] The name of the OauthIdpConfig. Must start with `oidc.`.
  /// [project] The ID of the project in which the resource belongs.
  /// [tenant] The name of the tenant where this OIDC IDP configuration resource exists
  TenantOauthIdpConfigArgs({
    required String clientId,
    String? clientSecret,
    required String displayName,
    bool? enabled,
    required String issuer,
    String? name,
    String? project,
    required String tenant,
  }) :
      clientId = pulumi.Input.asInput<String>(clientId),
      clientSecret = pulumi.Input.asOptionalInput<String>(clientSecret),
      displayName = pulumi.Input.asInput<String>(displayName),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      issuer = pulumi.Input.asInput<String>(issuer),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      tenant = pulumi.Input.asInput<String>(tenant);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': ?clientSecret,
      'displayName': displayName,
      'enabled': ?enabled,
      'issuer': issuer,
      'name': ?name,
      'project': ?project,
      'tenant': tenant,
    };
  }

  factory TenantOauthIdpConfigArgs.fromMap(Map<String, dynamic> map) {
    return TenantOauthIdpConfigArgs(
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
      displayName: map['displayName'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      issuer: map['issuer'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      tenant: map['tenant'] as String,
    );
  }
}

