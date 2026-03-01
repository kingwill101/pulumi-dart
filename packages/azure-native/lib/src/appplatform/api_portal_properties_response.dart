// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_portal_instance_response.dart';
import 'api_portal_resource_requests_response.dart';
import 'sso_properties_response.dart';

/// API portal properties payload
class ApiPortalPropertiesResponse {
  /// Indicates whether the API try-out feature is enabled or disabled. When enabled, users can try out the API by sending requests and viewing responses in API portal. When disabled, users cannot try out the API.
  final String? apiTryOutEnabledState;
  /// The array of resource Ids of gateway to integrate with API portal.
  final List<String>? gatewayIds;
  /// Indicate if only https is allowed.
  final bool? httpsOnly;
  /// Collection of instances belong to API portal.
  final List<ApiPortalInstanceResponse> instances;
  /// State of the API portal.
  final String provisioningState;
  /// Indicates whether the API portal exposes endpoint.
  final bool? public;
  /// The requested resource quantity for required CPU and Memory.
  final ApiPortalResourceRequestsResponse resourceRequests;
  /// Collection of OpenAPI source URL locations.
  final List<String>? sourceUrls;
  /// Single sign-on related configuration
  final SsoPropertiesResponse? ssoProperties;
  /// URL of the API portal, exposed when 'public' is true.
  final String url;

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
      'instances': pulumi.Input.encodeList<ApiPortalInstanceResponse, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'public': ?public,
      'resourceRequests': resourceRequests.toMap(),
      'sourceUrls': ?sourceUrls,
      'ssoProperties': ?ssoProperties == null ? null : ssoProperties!.toMap(),
      'url': url,
    };
  }

  factory ApiPortalPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ApiPortalPropertiesResponse(
      apiTryOutEnabledState: map['apiTryOutEnabledState'] == null ? null : map['apiTryOutEnabledState'] as String,
      gatewayIds: map['gatewayIds'] == null ? null : (map['gatewayIds'] as List).cast<String>(),
      httpsOnly: map['httpsOnly'] == null ? null : map['httpsOnly'] as bool,
      instances: pulumi.Input.decodeList<ApiPortalInstanceResponse>(map['instances'], (value) => ApiPortalInstanceResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      public: map['public'] == null ? null : map['public'] as bool,
      resourceRequests: ApiPortalResourceRequestsResponse.fromMap((map['resourceRequests'] as Map).cast<String, dynamic>()),
      sourceUrls: map['sourceUrls'] == null ? null : (map['sourceUrls'] as List).cast<String>(),
      ssoProperties: map['ssoProperties'] == null ? null : SsoPropertiesResponse.fromMap((map['ssoProperties'] as Map).cast<String, dynamic>()),
      url: map['url'] as String,
    );
  }
}

