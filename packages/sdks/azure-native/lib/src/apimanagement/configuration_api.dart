// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information regarding the Configuration API of the API Management service.
class ConfigurationApi {
  /// Indication whether or not the legacy Configuration API (v1) should be exposed on the API Management service. Value is optional but must be 'Enabled' or 'Disabled'. If 'Disabled', legacy Configuration API (v1) will not be available for self-hosted gateways. Default value is 'Enabled'
  final pulumi.Input<String>? legacyApi;

  /// Creates a new [ConfigurationApi].
  /// [legacyApi] Indication whether or not the legacy Configuration API (v1) should be exposed on the API Management service. Value is optional but must be 'Enabled' or 'Disabled'. If 'Disabled', legacy Configuration API (v1) will not be available for self-hosted gateways. Default value is 'Enabled'
  const ConfigurationApi({
    this.legacyApi,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'legacyApi': ?legacyApi,
    };
  }

  factory ConfigurationApi.fromMap(Map<String, dynamic> map) {
    return ConfigurationApi(
      legacyApi: (() { final guardedValue = map['legacyApi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
