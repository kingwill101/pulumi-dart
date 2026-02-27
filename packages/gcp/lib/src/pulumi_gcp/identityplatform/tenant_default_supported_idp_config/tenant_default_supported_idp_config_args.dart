// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for TenantDefaultSupportedIdpConfig.
class TenantDefaultSupportedIdpConfigArgs {
  /// OAuth client ID
  final pulumi.Input<String> clientId;

  /// OAuth client secret
  final pulumi.Input<String> clientSecret;

  /// If this IDP allows the user to sign in
  final pulumi.Input<bool>? enabled;

  /// ID of the IDP. Possible values include:
  /// * `apple.com`
  /// * `facebook.com`
  /// * `gc.apple.com`
  /// * `github.com`
  /// * `google.com`
  /// * `linkedin.com`
  /// * `microsoft.com`
  /// * `playgames.google.com`
  /// * `twitter.com`
  /// * `yahoo.com`
  final pulumi.Input<String> idpId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The name of the tenant where this DefaultSupportedIdpConfig resource exists
  final pulumi.Input<String> tenant;

  TenantDefaultSupportedIdpConfigArgs({
    required this.clientId,
    required this.clientSecret,
    this.enabled,
    required this.idpId,
    this.project,
    required this.tenant,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientId'] = clientId;
    map['clientSecret'] = clientSecret;
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    map['idpId'] = idpId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tenant'] = tenant;
    return map;
  }

  factory TenantDefaultSupportedIdpConfigArgs.fromMap(
      Map<String, dynamic> map) {
    return TenantDefaultSupportedIdpConfigArgs(
      clientId: pulumi.Input.asInput<String>(map['clientId']),
      clientSecret: pulumi.Input.asInput<String>(map['clientSecret']),
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      idpId: pulumi.Input.asInput<String>(map['idpId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tenant: pulumi.Input.asInput<String>(map['tenant']),
    );
  }
}
