// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_portal_instance_response.dart';
import 'api_portal_resource_requests_response.dart';
import 'sso_properties_response.dart';

/// API portal properties payload
class ApiPortalPropertiesResponse {
  /// Indicates whether the API try-out feature is enabled or disabled. When enabled, users can try out the API by sending requests and viewing responses in API portal. When disabled, users cannot try out the API.
  final pulumi.Input<String>? apiTryOutEnabledState;
  /// The array of resource Ids of gateway to integrate with API portal.
  final pulumi.Input<List<String>>? gatewayIds;
  /// Indicate if only https is allowed.
  final pulumi.Input<bool>? httpsOnly;
  /// Collection of instances belong to API portal.
  final pulumi.Input<List<ApiPortalInstanceResponse>> instances;
  /// State of the API portal.
  final pulumi.Input<String> provisioningState;
  /// Indicates whether the API portal exposes endpoint.
  final pulumi.Input<bool>? public;
  /// The requested resource quantity for required CPU and Memory.
  final pulumi.Input<ApiPortalResourceRequestsResponse> resourceRequests;
  /// Collection of OpenAPI source URL locations.
  final pulumi.Input<List<String>>? sourceUrls;
  /// Single sign-on related configuration
  final pulumi.Input<SsoPropertiesResponse>? ssoProperties;
  /// URL of the API portal, exposed when 'public' is true.
  final pulumi.Input<String> url;

  /// Creates a new [ApiPortalPropertiesResponse].
  /// [apiTryOutEnabledState] Indicates whether the API try-out feature is enabled or disabled. When enabled, users can try out the API by sending requests and viewing responses in API portal. When disabled, users cannot try out the API.
  /// [gatewayIds] The array of resource Ids of gateway to integrate with API portal.
  /// [httpsOnly] Indicate if only https is allowed.
  /// [instances] Collection of instances belong to API portal.
  /// [provisioningState] State of the API portal.
  /// [public] Indicates whether the API portal exposes endpoint.
  /// [resourceRequests] The requested resource quantity for required CPU and Memory.
  /// [sourceUrls] Collection of OpenAPI source URL locations.
  /// [ssoProperties] Single sign-on related configuration
  /// [url] URL of the API portal, exposed when 'public' is true.
  ApiPortalPropertiesResponse({
    this.apiTryOutEnabledState,
    this.gatewayIds,
    this.httpsOnly,
    required this.instances,
    required this.provisioningState,
    this.public,
    required this.resourceRequests,
    this.sourceUrls,
    this.ssoProperties,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiTryOutEnabledState': ?apiTryOutEnabledState,
      'gatewayIds': ?gatewayIds,
      'httpsOnly': ?httpsOnly,
      'instances': pulumi.Input.mapInputValue<List<ApiPortalInstanceResponse>, List<Map<String, dynamic>>>(instances, (value) => pulumi.Input.encodeList<ApiPortalInstanceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'public': ?public,
      'resourceRequests': pulumi.Input.mapInputValue<ApiPortalResourceRequestsResponse, Map<String, dynamic>>(resourceRequests, (value) => value.toMap()),
      'sourceUrls': ?sourceUrls,
      'ssoProperties': ?pulumi.Input.mapOptionalInputValue<SsoPropertiesResponse, Map<String, dynamic>>(ssoProperties, (value) => value.toMap()),
      'url': url,
    };
  }

  factory ApiPortalPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ApiPortalPropertiesResponse(
      apiTryOutEnabledState: (() { final guardedValue = map['apiTryOutEnabledState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayIds: (() { final guardedValue = map['gatewayIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      httpsOnly: (() { final guardedValue = map['httpsOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instances: pulumi.Input.fromValue(pulumi.Input.decodeList<ApiPortalInstanceResponse>(map['instances']!, (value) => ApiPortalInstanceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      public: (() { final guardedValue = map['public']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceRequests: pulumi.Input.fromValue(ApiPortalResourceRequestsResponse.fromMap((map['resourceRequests']! as Map).cast<String, dynamic>())),
      sourceUrls: (() { final guardedValue = map['sourceUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ssoProperties: (() { final guardedValue = map['ssoProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SsoPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

