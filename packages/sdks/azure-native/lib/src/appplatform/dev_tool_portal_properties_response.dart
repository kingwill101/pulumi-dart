// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dev_tool_portal_component_response.dart';
import 'dev_tool_portal_feature_settings_response.dart';
import 'dev_tool_portal_sso_properties_response.dart';

/// Dev Tool Portal properties payload
class DevToolPortalPropertiesResponse {
  /// Collection of components belong to Dev Tool Portal.
  final pulumi.Input<List<DevToolPortalComponentResponse>> components;
  /// Settings for Dev Tool Portal
  final pulumi.Input<DevToolPortalFeatureSettingsResponse>? features;
  /// State of the Dev Tool Portal.
  final pulumi.Input<String> provisioningState;
  /// Indicates whether the resource exposes public endpoint
  final pulumi.Input<bool>? public;
  /// Single sign-on related configuration
  final pulumi.Input<DevToolPortalSsoPropertiesResponse>? ssoProperties;
  /// URL of the resource, exposed when 'public' is true.
  final pulumi.Input<String> url;

  /// Creates a new [DevToolPortalPropertiesResponse].
  /// [components] Collection of components belong to Dev Tool Portal.
  /// [features] Settings for Dev Tool Portal
  /// [provisioningState] State of the Dev Tool Portal.
  /// [public] Indicates whether the resource exposes public endpoint
  /// [ssoProperties] Single sign-on related configuration
  /// [url] URL of the resource, exposed when 'public' is true.
  const DevToolPortalPropertiesResponse({
    required this.components,
    this.features,
    required this.provisioningState,
    this.public,
    this.ssoProperties,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'components': pulumi.Input.mapInputValue<List<DevToolPortalComponentResponse>, List<Map<String, dynamic>>>(components, (value) => pulumi.Input.encodeList<DevToolPortalComponentResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'features': ?pulumi.Input.mapOptionalInputValue<DevToolPortalFeatureSettingsResponse, Map<String, dynamic>>(features, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'public': ?public,
      'ssoProperties': ?pulumi.Input.mapOptionalInputValue<DevToolPortalSsoPropertiesResponse, Map<String, dynamic>>(ssoProperties, (value) => value.toMap()),
      'url': url,
    };
  }

  factory DevToolPortalPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DevToolPortalPropertiesResponse(
      components: pulumi.Input.fromValue(pulumi.Input.decodeList<DevToolPortalComponentResponse>(map['components']!, (value) => DevToolPortalComponentResponse.fromMap((value as Map).cast<String, dynamic>()))),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DevToolPortalFeatureSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      public: (() { final guardedValue = map['public']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ssoProperties: (() { final guardedValue = map['ssoProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DevToolPortalSsoPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
