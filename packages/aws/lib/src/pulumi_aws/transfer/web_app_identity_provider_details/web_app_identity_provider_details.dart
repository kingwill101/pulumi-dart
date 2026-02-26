// ignore_for_file: unused_element, unnecessary_cast

import '../web_app_identity_provider_details_identity_center_config/web_app_identity_provider_details_identity_center_config.dart';

class WebAppIdentityProviderDetails {
  /// Block that describes the values to use for the IAM Identity Center settings. See Identity center config below.
  final WebAppIdentityProviderDetailsIdentityCenterConfig? identityCenterConfig;

  WebAppIdentityProviderDetails({
    this.identityCenterConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final identityCenterConfigValue = identityCenterConfig;
    if (identityCenterConfigValue != null) {
      map['identityCenterConfig'] = identityCenterConfigValue.toMap();
    }
    return map;
  }

  factory WebAppIdentityProviderDetails.fromMap(Map<String, dynamic> map) {
    return WebAppIdentityProviderDetails(
      identityCenterConfig: map['identityCenterConfig'] == null
          ? null
          : WebAppIdentityProviderDetailsIdentityCenterConfig.fromMap(
              (map['identityCenterConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
