// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_app_identity_provider_details_identity_center_config.dart';

class WebAppIdentityProviderDetails {
  /// Block that describes the values to use for the IAM Identity Center settings. See `identityCenterConfig` Block below.
  final pulumi.Input<WebAppIdentityProviderDetailsIdentityCenterConfig>? identityCenterConfig;

  /// Creates a new [WebAppIdentityProviderDetails].
  /// [identityCenterConfig] Block that describes the values to use for the IAM Identity Center settings. See `identityCenterConfig` Block below.
  const WebAppIdentityProviderDetails({
    this.identityCenterConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityCenterConfig': ?pulumi.Input.mapOptionalInputValue<WebAppIdentityProviderDetailsIdentityCenterConfig, Map<String, dynamic>>(identityCenterConfig, (value) => value.toMap()),
    };
  }

  factory WebAppIdentityProviderDetails.fromMap(Map<String, dynamic> map) {
    return WebAppIdentityProviderDetails(
      identityCenterConfig: (() { final guardedValue = map['identityCenterConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAppIdentityProviderDetailsIdentityCenterConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
