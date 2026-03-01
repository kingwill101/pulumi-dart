// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dev_tool_portal_component_response.dart';
import 'dev_tool_portal_feature_settings_response.dart';
import 'dev_tool_portal_sso_properties_response.dart';

/// Dev Tool Portal properties payload
class DevToolPortalPropertiesResponse {
  /// Collection of components belong to Dev Tool Portal.
  final List<DevToolPortalComponentResponse> components;
  /// Settings for Dev Tool Portal
  final DevToolPortalFeatureSettingsResponse? features;
  /// State of the Dev Tool Portal.
  final String provisioningState;
  /// Indicates whether the resource exposes public endpoint
  final bool? public;
  /// Single sign-on related configuration
  final DevToolPortalSsoPropertiesResponse? ssoProperties;
  /// URL of the resource, exposed when 'public' is true.
  final String url;

  /// Creates a new [DevToolPortalPropertiesResponse].
  /// [components] Collection of components belong to Dev Tool Portal.
  /// [features] Settings for Dev Tool Portal
  /// [provisioningState] State of the Dev Tool Portal.
  /// [public] Indicates whether the resource exposes public endpoint
  /// [ssoProperties] Single sign-on related configuration
  /// [url] URL of the resource, exposed when 'public' is true.
  DevToolPortalPropertiesResponse({
    required this.components,
    this.features,
    required this.provisioningState,
    this.public,
    this.ssoProperties,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'components': pulumi.Input.encodeList<DevToolPortalComponentResponse, Map<String, dynamic>>(components, (value) => value.toMap()),
      'features': ?features == null ? null : features!.toMap(),
      'provisioningState': provisioningState,
      'public': ?public,
      'ssoProperties': ?ssoProperties == null ? null : ssoProperties!.toMap(),
      'url': url,
    };
  }

  factory DevToolPortalPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DevToolPortalPropertiesResponse(
      components: pulumi.Input.decodeList<DevToolPortalComponentResponse>(map['components'], (value) => DevToolPortalComponentResponse.fromMap((value as Map).cast<String, dynamic>())),
      features: map['features'] == null ? null : DevToolPortalFeatureSettingsResponse.fromMap((map['features'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      public: map['public'] == null ? null : map['public'] as bool,
      ssoProperties: map['ssoProperties'] == null ? null : DevToolPortalSsoPropertiesResponse.fromMap((map['ssoProperties'] as Map).cast<String, dynamic>()),
      url: map['url'] as String,
    );
  }
}

