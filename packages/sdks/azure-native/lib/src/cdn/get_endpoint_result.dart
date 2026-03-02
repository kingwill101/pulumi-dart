// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deep_created_custom_domain_response.dart';
import 'deep_created_origin_group_response.dart';
import 'deep_created_origin_response.dart';
import 'endpoint_properties_update_parameters_delivery_policy_response.dart';
import 'endpoint_properties_update_parameters_web_application_firewall_policy_link_response.dart';
import 'geo_filter_response.dart';
import 'resource_reference_response.dart';
import 'system_data_response.dart';
import 'url_signing_key_response.dart';

/// Result data returned by getEndpoint.
class GetEndpointResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// List of content types on which compression applies. The value should be a valid MIME type.
  final List<String>? contentTypesToCompress;
  /// The custom domains under the endpoint.
  final List<DeepCreatedCustomDomainResponse> customDomains;
  /// A reference to the origin group.
  final ResourceReferenceResponse? defaultOriginGroup;
  /// A policy that specifies the delivery rules to be used for an endpoint.
  final EndpointPropertiesUpdateParametersDeliveryPolicyResponse? deliveryPolicy;
  /// List of rules defining the user's geo access within a CDN endpoint. Each geo filter defines an access rule to a specified path or content, e.g. block APAC for path /pictures/
  final List<GeoFilterResponse>? geoFilters;
  /// The host name of the endpoint structured as {endpointName}.{DNSZone}, e.g. contoso.azureedge.net
  final String hostName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Indicates whether content compression is enabled on CDN. Default value is false. If compression is enabled, content will be served as compressed if user requests for a compressed version. Content won't be compressed on CDN when requested content is smaller than 1 byte or larger than 1 MB.
  final bool? isCompressionEnabled;
  /// Indicates whether HTTP traffic is allowed on the endpoint. Default value is true. At least one protocol (HTTP or HTTPS) must be allowed.
  final bool? isHttpAllowed;
  /// Indicates whether HTTPS traffic is allowed on the endpoint. Default value is true. At least one protocol (HTTP or HTTPS) must be allowed.
  final bool? isHttpsAllowed;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Specifies what scenario the customer wants this CDN endpoint to optimize for, e.g. Download, Media services. With this information, CDN can apply scenario driven optimization.
  final String? optimizationType;
  /// The origin groups comprising of origins that are used for load balancing the traffic based on availability.
  final List<DeepCreatedOriginGroupResponse>? originGroups;
  /// The host header value sent to the origin with each request. This property at Endpoint is only allowed when endpoint uses single origin and can be overridden by the same property specified at origin.If you leave this blank, the request hostname determines this value. Azure CDN origins, such as Web Apps, Blob Storage, and Cloud Services require this host header value to match the origin hostname by default.
  final String? originHostHeader;
  /// A directory path on the origin that CDN can use to retrieve content from, e.g. contoso.cloudapp.net/originpath.
  final String? originPath;
  /// The source of the content being delivered via CDN.
  final List<DeepCreatedOriginResponse> origins;
  /// Path to a file hosted on the origin which helps accelerate delivery of the dynamic content and calculate the most optimal routes for the CDN. This is relative to the origin path. This property is only relevant when using a single origin.
  final String? probePath;
  /// Provisioning status of the endpoint.
  final String provisioningState;
  /// Defines how CDN caches requests that include query strings. You can ignore any query strings when caching, bypass caching to prevent requests that contain query strings from being cached, or cache every request with a unique URL.
  final String? queryStringCachingBehavior;
  /// Resource status of the endpoint.
  final String resourceState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// List of keys used to validate the signed URL hashes.
  final List<UrlSigningKeyResponse>? urlSigningKeys;
  /// Defines the Web Application Firewall policy for the endpoint (if applicable)
  final EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLinkResponse? webApplicationFirewallPolicyLink;

  /// Creates a new [GetEndpointResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [contentTypesToCompress] List of content types on which compression applies. The value should be a valid MIME type.
  /// [customDomains] The custom domains under the endpoint.
  /// [defaultOriginGroup] A reference to the origin group.
  /// [deliveryPolicy] A policy that specifies the delivery rules to be used for an endpoint.
  /// [geoFilters] List of rules defining the user's geo access within a CDN endpoint. Each geo filter defines an access rule to a specified path or content, e.g. block APAC for path /pictures/
  /// [hostName] The host name of the endpoint structured as {endpointName}.{DNSZone}, e.g. contoso.azureedge.net
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isCompressionEnabled] Indicates whether content compression is enabled on CDN. Default value is false. If compression is enabled, content will be served as compressed if user requests for a compressed version. Content won't be compressed on CDN when requested content is smaller than 1 byte or larger than 1 MB.
  /// [isHttpAllowed] Indicates whether HTTP traffic is allowed on the endpoint. Default value is true. At least one protocol (HTTP or HTTPS) must be allowed.
  /// [isHttpsAllowed] Indicates whether HTTPS traffic is allowed on the endpoint. Default value is true. At least one protocol (HTTP or HTTPS) must be allowed.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [optimizationType] Specifies what scenario the customer wants this CDN endpoint to optimize for, e.g. Download, Media services. With this information, CDN can apply scenario driven optimization.
  /// [originGroups] The origin groups comprising of origins that are used for load balancing the traffic based on availability.
  /// [originHostHeader] The host header value sent to the origin with each request. This property at Endpoint is only allowed when endpoint uses single origin and can be overridden by the same property specified at origin.If you leave this blank, the request hostname determines this value. Azure CDN origins, such as Web Apps, Blob Storage, and Cloud Services require this host header value to match the origin hostname by default.
  /// [originPath] A directory path on the origin that CDN can use to retrieve content from, e.g. contoso.cloudapp.net/originpath.
  /// [origins] The source of the content being delivered via CDN.
  /// [probePath] Path to a file hosted on the origin which helps accelerate delivery of the dynamic content and calculate the most optimal routes for the CDN. This is relative to the origin path. This property is only relevant when using a single origin.
  /// [provisioningState] Provisioning status of the endpoint.
  /// [queryStringCachingBehavior] Defines how CDN caches requests that include query strings. You can ignore any query strings when caching, bypass caching to prevent requests that contain query strings from being cached, or cache every request with a unique URL.
  /// [resourceState] Resource status of the endpoint.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [urlSigningKeys] List of keys used to validate the signed URL hashes.
  /// [webApplicationFirewallPolicyLink] Defines the Web Application Firewall policy for the endpoint (if applicable)
  GetEndpointResult({
    required this.azureApiVersion,
    this.contentTypesToCompress,
    required this.customDomains,
    this.defaultOriginGroup,
    this.deliveryPolicy,
    this.geoFilters,
    required this.hostName,
    required this.id,
    this.isCompressionEnabled,
    this.isHttpAllowed,
    this.isHttpsAllowed,
    required this.location,
    required this.name,
    this.optimizationType,
    this.originGroups,
    this.originHostHeader,
    this.originPath,
    required this.origins,
    this.probePath,
    required this.provisioningState,
    this.queryStringCachingBehavior,
    required this.resourceState,
    required this.systemData,
    this.tags,
    required this.type,
    this.urlSigningKeys,
    this.webApplicationFirewallPolicyLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'contentTypesToCompress': ?contentTypesToCompress,
      'customDomains': pulumi.Input.encodeList<DeepCreatedCustomDomainResponse, Map<String, dynamic>>(customDomains, (value) => value.toMap()),
      'defaultOriginGroup': ?defaultOriginGroup == null ? null : defaultOriginGroup!.toMap(),
      'deliveryPolicy': ?deliveryPolicy == null ? null : deliveryPolicy!.toMap(),
      'geoFilters': ?geoFilters == null ? null : pulumi.Input.encodeList<GeoFilterResponse, Map<String, dynamic>>(geoFilters!, (value) => value.toMap()),
      'hostName': hostName,
      'id': id,
      'isCompressionEnabled': ?isCompressionEnabled,
      'isHttpAllowed': ?isHttpAllowed,
      'isHttpsAllowed': ?isHttpsAllowed,
      'location': location,
      'name': name,
      'optimizationType': ?optimizationType,
      'originGroups': ?originGroups == null ? null : pulumi.Input.encodeList<DeepCreatedOriginGroupResponse, Map<String, dynamic>>(originGroups!, (value) => value.toMap()),
      'originHostHeader': ?originHostHeader,
      'originPath': ?originPath,
      'origins': pulumi.Input.encodeList<DeepCreatedOriginResponse, Map<String, dynamic>>(origins, (value) => value.toMap()),
      'probePath': ?probePath,
      'provisioningState': provisioningState,
      'queryStringCachingBehavior': ?queryStringCachingBehavior,
      'resourceState': resourceState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'urlSigningKeys': ?urlSigningKeys == null ? null : pulumi.Input.encodeList<UrlSigningKeyResponse, Map<String, dynamic>>(urlSigningKeys!, (value) => value.toMap()),
      'webApplicationFirewallPolicyLink': ?webApplicationFirewallPolicyLink == null ? null : webApplicationFirewallPolicyLink!.toMap(),
    };
  }

  factory GetEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetEndpointResult(
      azureApiVersion: map['azureApiVersion'] as String,
      contentTypesToCompress: map['contentTypesToCompress'] == null ? null : (map['contentTypesToCompress']! as List).cast<String>(),
      customDomains: pulumi.Input.decodeList<DeepCreatedCustomDomainResponse>(map['customDomains'], (value) => DeepCreatedCustomDomainResponse.fromMap((value as Map).cast<String, dynamic>())),
      defaultOriginGroup: map['defaultOriginGroup'] == null ? null : ResourceReferenceResponse.fromMap((map['defaultOriginGroup']! as Map).cast<String, dynamic>()),
      deliveryPolicy: map['deliveryPolicy'] == null ? null : EndpointPropertiesUpdateParametersDeliveryPolicyResponse.fromMap((map['deliveryPolicy']! as Map).cast<String, dynamic>()),
      geoFilters: map['geoFilters'] == null ? null : pulumi.Input.decodeList<GeoFilterResponse>(map['geoFilters']!, (value) => GeoFilterResponse.fromMap((value as Map).cast<String, dynamic>())),
      hostName: map['hostName'] as String,
      id: map['id'] as String,
      isCompressionEnabled: map['isCompressionEnabled'] == null ? null : map['isCompressionEnabled']! as bool,
      isHttpAllowed: map['isHttpAllowed'] == null ? null : map['isHttpAllowed']! as bool,
      isHttpsAllowed: map['isHttpsAllowed'] == null ? null : map['isHttpsAllowed']! as bool,
      location: map['location'] as String,
      name: map['name'] as String,
      optimizationType: map['optimizationType'] == null ? null : map['optimizationType']! as String,
      originGroups: map['originGroups'] == null ? null : pulumi.Input.decodeList<DeepCreatedOriginGroupResponse>(map['originGroups']!, (value) => DeepCreatedOriginGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
      originHostHeader: map['originHostHeader'] == null ? null : map['originHostHeader']! as String,
      originPath: map['originPath'] == null ? null : map['originPath']! as String,
      origins: pulumi.Input.decodeList<DeepCreatedOriginResponse>(map['origins'], (value) => DeepCreatedOriginResponse.fromMap((value as Map).cast<String, dynamic>())),
      probePath: map['probePath'] == null ? null : map['probePath']! as String,
      provisioningState: map['provisioningState'] as String,
      queryStringCachingBehavior: map['queryStringCachingBehavior'] == null ? null : map['queryStringCachingBehavior']! as String,
      resourceState: map['resourceState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      urlSigningKeys: map['urlSigningKeys'] == null ? null : pulumi.Input.decodeList<UrlSigningKeyResponse>(map['urlSigningKeys']!, (value) => UrlSigningKeyResponse.fromMap((value as Map).cast<String, dynamic>())),
      webApplicationFirewallPolicyLink: map['webApplicationFirewallPolicyLink'] == null ? null : EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLinkResponse.fromMap((map['webApplicationFirewallPolicyLink']! as Map).cast<String, dynamic>()),
    );
  }
}

