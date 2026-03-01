// ignore_for_file: unused_element, unnecessary_cast

import 'web_app_identity_provider_details_identity_center_config.dart';

class WebAppIdentityProviderDetails {
  /// Block that describes the values to use for the IAM Identity Center settings. See Identity center config below.
  final WebAppIdentityProviderDetailsIdentityCenterConfig? identityCenterConfig;

  /// Creates a new [WebAppIdentityProviderDetails].
  /// [identityCenterConfig] Block that describes the values to use for the IAM Identity Center settings. See Identity center config below.
  WebAppIdentityProviderDetails({this.identityCenterConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityCenterConfig': ?identityCenterConfig == null
          ? null
          : identityCenterConfig!.toMap(),
    };
  }

  factory WebAppIdentityProviderDetails.fromMap(Map<String, dynamic> map) {
    return WebAppIdentityProviderDetails(
      identityCenterConfig: map['identityCenterConfig'] == null
          ? null
          : WebAppIdentityProviderDetailsIdentityCenterConfig.fromMap(
              (map['identityCenterConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
