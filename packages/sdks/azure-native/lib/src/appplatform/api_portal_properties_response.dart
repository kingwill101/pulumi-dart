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
      apiTryOutEnabledState: map['apiTryOutEnabledState'] == null ? null : (map['apiTryOutEnabledState']! as String).input(),
      gatewayIds: map['gatewayIds'] == null ? null : ((map['gatewayIds']! as List).cast<String>()).input(),
      httpsOnly: map['httpsOnly'] == null ? null : (map['httpsOnly']! as bool).input(),
      instances: (pulumi.Input.decodeList<ApiPortalInstanceResponse>(map['instances'], (value) => ApiPortalInstanceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      public: map['public'] == null ? null : (map['public']! as bool).input(),
      resourceRequests: (ApiPortalResourceRequestsResponse.fromMap((map['resourceRequests'] as Map).cast<String, dynamic>())).input(),
      sourceUrls: map['sourceUrls'] == null ? null : ((map['sourceUrls']! as List).cast<String>()).input(),
      ssoProperties: map['ssoProperties'] == null ? null : (SsoPropertiesResponse.fromMap((map['ssoProperties']! as Map).cast<String, dynamic>())).input(),
      url: (map['url'] as String).input(),
    );
  }
}

