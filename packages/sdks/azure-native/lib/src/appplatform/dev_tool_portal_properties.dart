// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dev_tool_portal_feature_settings.dart';
import 'dev_tool_portal_sso_properties.dart';

/// Dev Tool Portal properties payload
class DevToolPortalProperties {
  /// Settings for Dev Tool Portal
  final pulumi.Input<DevToolPortalFeatureSettings?>? features;
  /// Indicates whether the resource exposes public endpoint
  final pulumi.Input<bool?>? public;
  /// Single sign-on related configuration
  final pulumi.Input<DevToolPortalSsoProperties?>? ssoProperties;

  /// Creates a new [DevToolPortalProperties].
  /// [features] Settings for Dev Tool Portal
  /// [public] Indicates whether the resource exposes public endpoint
  /// [ssoProperties] Single sign-on related configuration
  DevToolPortalProperties({
    this.features,
    pulumi.Input<bool?>? public,
    this.ssoProperties,
  }) : public = public ?? pulumi.Input.fromValue(false);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'features': ?pulumi.Input.mapOptionalInputValue<DevToolPortalFeatureSettings, Map<String, dynamic>>(features, (value) => value.toMap()),
      'public': ?public,
      'ssoProperties': ?pulumi.Input.mapOptionalInputValue<DevToolPortalSsoProperties, Map<String, dynamic>>(ssoProperties, (value) => value.toMap()),
    };
  }

  factory DevToolPortalProperties.fromMap(Map<String, dynamic> map) {
    return DevToolPortalProperties(
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DevToolPortalFeatureSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      public: (() { final guardedValue = map['public']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ssoProperties: (() { final guardedValue = map['ssoProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DevToolPortalSsoProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
