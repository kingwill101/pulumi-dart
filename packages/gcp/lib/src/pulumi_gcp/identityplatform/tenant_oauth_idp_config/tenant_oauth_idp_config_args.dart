// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for TenantOauthIdpConfig.
class TenantOauthIdpConfigArgs {
  /// The client id of an OAuth client.
  final Input<String> clientId;

  /// The client secret of the OAuth client, to enable OIDC code flow.
  final Input<String>? clientSecret;

  /// Human friendly display name.
  final Input<String> displayName;

  /// If this config allows users to sign in with the provider.
  final Input<bool>? enabled;

  /// For OIDC Idps, the issuer identifier.
  final Input<String> issuer;

  /// The name of the OauthIdpConfig. Must start with `oidc.`.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The name of the tenant where this OIDC IDP configuration resource exists
  final Input<String> tenant;

  TenantOauthIdpConfigArgs({
    required this.clientId,
    this.clientSecret,
    required this.displayName,
    this.enabled,
    required this.issuer,
    this.name,
    this.project,
    required this.tenant,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientId'] = clientId;
    final clientSecretValue = clientSecret;
    if (clientSecretValue != null) {
      map['clientSecret'] = clientSecretValue;
    }
    map['displayName'] = displayName;
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
    map['tenant'] = tenant;
    return map;
  }

  factory TenantOauthIdpConfigArgs.fromMap(Map<String, dynamic> map) {
    return TenantOauthIdpConfigArgs(
      clientId: Input.asInput<String>(map['clientId']),
      clientSecret: Input.asOptionalInput<String>(map['clientSecret']),
      displayName: Input.asInput<String>(map['displayName']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      issuer: Input.asInput<String>(map['issuer']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      tenant: Input.asInput<String>(map['tenant']),
    );
  }
}
