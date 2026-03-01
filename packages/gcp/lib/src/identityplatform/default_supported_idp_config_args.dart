// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identityplatform_default_supported_idp_config_default_supported_idp_config_args_doc}
/// The set of arguments for DefaultSupportedIdpConfig.
/// {@endtemplate}
/// {@macro pulumi_identityplatform_default_supported_idp_config_default_supported_idp_config_args_doc}
class DefaultSupportedIdpConfigArgs {
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

  /// Creates a new [DefaultSupportedIdpConfigArgs].
  /// [clientId] OAuth client ID
  /// [clientSecret] OAuth client secret
  /// [enabled] If this IDP allows the user to sign in
  /// [idpId] ID of the IDP. Possible values include:
  /// [project] The ID of the project in which the resource belongs.
  DefaultSupportedIdpConfigArgs({
    required String clientId,
    required String clientSecret,
    bool? enabled,
    required String idpId,
    String? project,
  }) : clientId = pulumi.Input.asInput<String>(clientId),
       clientSecret = pulumi.Input.asInput<String>(clientSecret),
       enabled = pulumi.Input.asOptionalInput<bool>(enabled),
       idpId = pulumi.Input.asInput<String>(idpId),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': clientSecret,
      'enabled': ?enabled,
      'idpId': idpId,
      'project': ?project,
    };
  }

  factory DefaultSupportedIdpConfigArgs.fromMap(Map<String, dynamic> map) {
    return DefaultSupportedIdpConfigArgs(
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      idpId: map['idpId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
