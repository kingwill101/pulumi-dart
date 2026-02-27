// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_apple_sign_in_config.dart';

/// The set of arguments for DefaultSupportedIdpConfig.
class DefaultSupportedIdpConfigArgs {
  /// Additional config for Apple-based projects.
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig>?
      appleSignInConfig;

  /// OAuth client ID.
  final pulumi.Input<String>? clientId;

  /// OAuth client secret.
  final pulumi.Input<String>? clientSecret;

  /// True if allows the user to sign in with the provider.
  final pulumi.Input<bool>? enabled;

  /// The id of the Idp to create a config for. Call ListDefaultSupportedIdps for list of all default supported Idps.
  final pulumi.Input<String>? idpId;

  /// The name of the DefaultSupportedIdpConfig resource, for example: "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tenantId;

  DefaultSupportedIdpConfigArgs({
    this.appleSignInConfig,
    this.clientId,
    this.clientSecret,
    this.enabled,
    this.idpId,
    this.name,
    this.project,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appleSignInConfigValue = appleSignInConfig;
    if (appleSignInConfigValue != null) {
      map['appleSignInConfig'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig,
              Map<String, dynamic>>(
          appleSignInConfigValue, (value) => value.toMap());
    }
    final clientIdValue = clientId;
    if (clientIdValue != null) {
      map['clientId'] = clientIdValue;
    }
    final clientSecretValue = clientSecret;
    if (clientSecretValue != null) {
      map['clientSecret'] = clientSecretValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final idpIdValue = idpId;
    if (idpIdValue != null) {
      map['idpId'] = idpIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tenantId'] = tenantId;
    return map;
  }

  factory DefaultSupportedIdpConfigArgs.fromMap(Map<String, dynamic> map) {
    return DefaultSupportedIdpConfigArgs(
      appleSignInConfig: pulumi.Input.asOptionalInput<
              GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig>(
          map['appleSignInConfig']),
      clientId: pulumi.Input.asOptionalInput<String>(map['clientId']),
      clientSecret: pulumi.Input.asOptionalInput<String>(map['clientSecret']),
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      idpId: pulumi.Input.asOptionalInput<String>(map['idpId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tenantId: pulumi.Input.asInput<String>(map['tenantId']),
    );
  }
}
