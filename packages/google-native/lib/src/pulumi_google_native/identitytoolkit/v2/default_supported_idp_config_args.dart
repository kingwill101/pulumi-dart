// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_identitytoolkit_admin_v2_apple_sign_in_config.dart';

/// The set of arguments for DefaultSupportedIdpConfig.
class DefaultSupportedIdpConfigArgs {
  /// Additional config for Apple-based projects.
  final Input<GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig>?
      appleSignInConfig;

  /// OAuth client ID.
  final Input<String>? clientId;

  /// OAuth client secret.
  final Input<String>? clientSecret;

  /// True if allows the user to sign in with the provider.
  final Input<bool>? enabled;

  /// The id of the Idp to create a config for. Call ListDefaultSupportedIdps for list of all default supported Idps.
  final Input<String>? idpId;

  /// The name of the DefaultSupportedIdpConfig resource, for example: "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  final Input<String>? name;
  final Input<String>? project;
  final Input<String> tenantId;

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
      map['appleSignInConfig'] = Input.mapOptionalInputValue<
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
      appleSignInConfig: Input.asOptionalInput<
              GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig>(
          map['appleSignInConfig']),
      clientId: Input.asOptionalInput<String>(map['clientId']),
      clientSecret: Input.asOptionalInput<String>(map['clientSecret']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      idpId: Input.asOptionalInput<String>(map['idpId']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      tenantId: Input.asInput<String>(map['tenantId']),
    );
  }
}
