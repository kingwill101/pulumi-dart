// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication client credentials of the custom Open ID Connect provider.
class OpenIdConnectClientCredentialResponse {
  /// The app setting that contains the client secret for the custom Open ID Connect provider.
  final pulumi.Input<String>? clientSecretSettingName;
  /// The method that should be used to authenticate the user.
  final pulumi.Input<String>? method;

  /// Creates a new [OpenIdConnectClientCredentialResponse].
  /// [clientSecretSettingName] The app setting that contains the client secret for the custom Open ID Connect provider.
  /// [method] The method that should be used to authenticate the user.
  OpenIdConnectClientCredentialResponse({
    this.clientSecretSettingName,
    this.method,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientSecretSettingName': ?clientSecretSettingName,
      'method': ?method,
    };
  }

  factory OpenIdConnectClientCredentialResponse.fromMap(Map<String, dynamic> map) {
    return OpenIdConnectClientCredentialResponse(
      clientSecretSettingName: map['clientSecretSettingName'] == null ? null : (map['clientSecretSettingName'] as String).input(),
      method: map['method'] == null ? null : (map['method'] as String).input(),
    );
  }
}

