// ignore_for_file: unused_element, unnecessary_cast

import 'dev_tool_portal_feature_settings.dart';
import 'dev_tool_portal_sso_properties.dart';

/// Dev Tool Portal properties payload
class DevToolPortalProperties {
  /// Settings for Dev Tool Portal
  final DevToolPortalFeatureSettings? features;
  /// Indicates whether the resource exposes public endpoint
  final bool? public;
  /// Single sign-on related configuration
  final DevToolPortalSsoProperties? ssoProperties;

  /// Creates a new [DevToolPortalProperties].
  /// [features] Settings for Dev Tool Portal
  /// [public] Indicates whether the resource exposes public endpoint
  /// [ssoProperties] Single sign-on related configuration
  DevToolPortalProperties({
    this.features,
    this.public,
    this.ssoProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'features': ?features == null ? null : features!.toMap(),
      'public': ?public,
      'ssoProperties': ?ssoProperties == null ? null : ssoProperties!.toMap(),
    };
  }

  factory DevToolPortalProperties.fromMap(Map<String, dynamic> map) {
    return DevToolPortalProperties(
      features: map['features'] == null ? null : DevToolPortalFeatureSettings.fromMap((map['features'] as Map).cast<String, dynamic>()),
      public: map['public'] == null ? null : map['public'] as bool,
      ssoProperties: map['ssoProperties'] == null ? null : DevToolPortalSsoProperties.fromMap((map['ssoProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

