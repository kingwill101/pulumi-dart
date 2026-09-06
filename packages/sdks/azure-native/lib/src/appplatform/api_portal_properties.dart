// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sso_properties.dart';

/// API portal properties payload
class ApiPortalProperties {
  /// Indicates whether the API try-out feature is enabled or disabled. When enabled, users can try out the API by sending requests and viewing responses in API portal. When disabled, users cannot try out the API.
  final pulumi.Input<dynamic>? apiTryOutEnabledState;
  /// The array of resource Ids of gateway to integrate with API portal.
  final pulumi.Input<List<String>?>? gatewayIds;
  /// Indicate if only https is allowed.
  final pulumi.Input<bool?>? httpsOnly;
  /// Indicates whether the API portal exposes endpoint.
  final pulumi.Input<bool?>? public;
  /// Collection of OpenAPI source URL locations.
  final pulumi.Input<List<String>?>? sourceUrls;
  /// Single sign-on related configuration
  final pulumi.Input<SsoProperties?>? ssoProperties;

  /// Creates a new [ApiPortalProperties].
  /// [apiTryOutEnabledState] Indicates whether the API try-out feature is enabled or disabled. When enabled, users can try out the API by sending requests and viewing responses in API portal. When disabled, users cannot try out the API.
  /// [gatewayIds] The array of resource Ids of gateway to integrate with API portal.
  /// [httpsOnly] Indicate if only https is allowed.
  /// [public] Indicates whether the API portal exposes endpoint.
  /// [sourceUrls] Collection of OpenAPI source URL locations.
  /// [ssoProperties] Single sign-on related configuration
  ApiPortalProperties({
    pulumi.Input<dynamic>? apiTryOutEnabledState,
    this.gatewayIds,
    pulumi.Input<bool?>? httpsOnly,
    pulumi.Input<bool?>? public,
    this.sourceUrls,
    this.ssoProperties,
  }) : apiTryOutEnabledState = apiTryOutEnabledState ?? pulumi.Input.fromValue('Enabled'), httpsOnly = httpsOnly ?? pulumi.Input.fromValue(false), public = public ?? pulumi.Input.fromValue(false);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiTryOutEnabledState': ?apiTryOutEnabledState,
      'gatewayIds': ?gatewayIds,
      'httpsOnly': ?httpsOnly,
      'public': ?public,
      'sourceUrls': ?sourceUrls,
      'ssoProperties': ?pulumi.Input.mapOptionalInputValue<SsoProperties, Map<String, dynamic>>(ssoProperties, (value) => value.toMap()),
    };
  }

  factory ApiPortalProperties.fromMap(Map<String, dynamic> map) {
    return ApiPortalProperties(
      apiTryOutEnabledState: (() { final guardedValue = map['apiTryOutEnabledState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      gatewayIds: (() { final guardedValue = map['gatewayIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      httpsOnly: (() { final guardedValue = map['httpsOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      public: (() { final guardedValue = map['public']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourceUrls: (() { final guardedValue = map['sourceUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ssoProperties: (() { final guardedValue = map['ssoProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SsoProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
