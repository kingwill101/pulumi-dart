// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deep_created_origin.dart';
import 'deep_created_origin_group.dart';
import 'endpoint_properties_update_parameters_delivery_policy.dart';
import 'endpoint_properties_update_parameters_web_application_firewall_policy_link.dart';
import 'geo_filter.dart';
import 'query_string_caching_behavior.dart';
import 'resource_reference.dart';
import 'url_signing_key.dart';

/// {@template pulumi_cdn_endpoint_args_doc}
/// The set of arguments for Endpoint.
/// {@endtemplate}
/// {@macro pulumi_cdn_endpoint_args_doc}
class EndpointArgs {
  /// List of content types on which compression applies. The value should be a valid MIME type.
  final pulumi.Input<List<String>>? contentTypesToCompress;
  /// A reference to the origin group.
  final pulumi.Input<ResourceReference>? defaultOriginGroup;
  /// A policy that specifies the delivery rules to be used for an endpoint.
  final pulumi.Input<EndpointPropertiesUpdateParametersDeliveryPolicy>? deliveryPolicy;
  /// Name of the endpoint under the profile which is unique globally.
  final pulumi.Input<String>? endpointName;
  /// List of rules defining the user's geo access within a CDN endpoint. Each geo filter defines an access rule to a specified path or content, e.g. block APAC for path /pictures/
  final pulumi.Input<List<GeoFilter>>? geoFilters;
  /// Indicates whether content compression is enabled on CDN. Default value is false. If compression is enabled, content will be served as compressed if user requests for a compressed version. Content won't be compressed on CDN when requested content is smaller than 1 byte or larger than 1 MB.
  final pulumi.Input<bool>? isCompressionEnabled;
  /// Indicates whether HTTP traffic is allowed on the endpoint. Default value is true. At least one protocol (HTTP or HTTPS) must be allowed.
  final pulumi.Input<bool>? isHttpAllowed;
  /// Indicates whether HTTPS traffic is allowed on the endpoint. Default value is true. At least one protocol (HTTP or HTTPS) must be allowed.
  final pulumi.Input<bool>? isHttpsAllowed;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Specifies what scenario the customer wants this CDN endpoint to optimize for, e.g. Download, Media services. With this information, CDN can apply scenario driven optimization.
  final pulumi.Input<String>? optimizationType;
  /// The origin groups comprising of origins that are used for load balancing the traffic based on availability.
  final pulumi.Input<List<DeepCreatedOriginGroup>>? originGroups;
  /// The host header value sent to the origin with each request. This property at Endpoint is only allowed when endpoint uses single origin and can be overridden by the same property specified at origin.If you leave this blank, the request hostname determines this value. Azure CDN origins, such as Web Apps, Blob Storage, and Cloud Services require this host header value to match the origin hostname by default.
  final pulumi.Input<String>? originHostHeader;
  /// A directory path on the origin that CDN can use to retrieve content from, e.g. contoso.cloudapp.net/originpath.
  final pulumi.Input<String>? originPath;
  /// The source of the content being delivered via CDN.
  final pulumi.Input<List<DeepCreatedOrigin>> origins;
  /// Path to a file hosted on the origin which helps accelerate delivery of the dynamic content and calculate the most optimal routes for the CDN. This is relative to the origin path. This property is only relevant when using a single origin.
  final pulumi.Input<String>? probePath;
  /// Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// Defines how CDN caches requests that include query strings. You can ignore any query strings when caching, bypass caching to prevent requests that contain query strings from being cached, or cache every request with a unique URL.
  final pulumi.Input<QueryStringCachingBehavior>? queryStringCachingBehavior;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// List of keys used to validate the signed URL hashes.
  final pulumi.Input<List<UrlSigningKey>>? urlSigningKeys;
  /// Defines the Web Application Firewall policy for the endpoint (if applicable)
  final pulumi.Input<EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink>? webApplicationFirewallPolicyLink;

  /// Creates a new [EndpointArgs].
  /// [contentTypesToCompress] List of content types on which compression applies. The value should be a valid MIME type.
  /// [defaultOriginGroup] A reference to the origin group.
  /// [deliveryPolicy] A policy that specifies the delivery rules to be used for an endpoint.
  /// [endpointName] Name of the endpoint under the profile which is unique globally.
  /// [geoFilters] List of rules defining the user's geo access within a CDN endpoint. Each geo filter defines an access rule to a specified path or content, e.g. block APAC for path /pictures/
  /// [isCompressionEnabled] Indicates whether content compression is enabled on CDN. Default value is false. If compression is enabled, content will be served as compressed if user requests for a compressed version. Content won't be compressed on CDN when requested content is smaller than 1 byte or larger than 1 MB.
  /// [isHttpAllowed] Indicates whether HTTP traffic is allowed on the endpoint. Default value is true. At least one protocol (HTTP or HTTPS) must be allowed.
  /// [isHttpsAllowed] Indicates whether HTTPS traffic is allowed on the endpoint. Default value is true. At least one protocol (HTTP or HTTPS) must be allowed.
  /// [location] The geo-location where the resource lives
  /// [optimizationType] Specifies what scenario the customer wants this CDN endpoint to optimize for, e.g. Download, Media services. With this information, CDN can apply scenario driven optimization.
  /// [originGroups] The origin groups comprising of origins that are used for load balancing the traffic based on availability.
  /// [originHostHeader] The host header value sent to the origin with each request. This property at Endpoint is only allowed when endpoint uses single origin and can be overridden by the same property specified at origin.If you leave this blank, the request hostname determines this value. Azure CDN origins, such as Web Apps, Blob Storage, and Cloud Services require this host header value to match the origin hostname by default.
  /// [originPath] A directory path on the origin that CDN can use to retrieve content from, e.g. contoso.cloudapp.net/originpath.
  /// [origins] The source of the content being delivered via CDN.
  /// [probePath] Path to a file hosted on the origin which helps accelerate delivery of the dynamic content and calculate the most optimal routes for the CDN. This is relative to the origin path. This property is only relevant when using a single origin.
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  /// [queryStringCachingBehavior] Defines how CDN caches requests that include query strings. You can ignore any query strings when caching, bypass caching to prevent requests that contain query strings from being cached, or cache every request with a unique URL.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [urlSigningKeys] List of keys used to validate the signed URL hashes.
  /// [webApplicationFirewallPolicyLink] Defines the Web Application Firewall policy for the endpoint (if applicable)
  EndpointArgs({
    pulumi.Output<List<String>>? contentTypesToCompress,
    pulumi.Output<ResourceReference>? defaultOriginGroup,
    pulumi.Output<EndpointPropertiesUpdateParametersDeliveryPolicy>? deliveryPolicy,
    pulumi.Output<String>? endpointName,
    pulumi.Output<List<GeoFilter>>? geoFilters,
    pulumi.Output<bool>? isCompressionEnabled,
    pulumi.Output<bool>? isHttpAllowed,
    pulumi.Output<bool>? isHttpsAllowed,
    pulumi.Output<String>? location,
    pulumi.Output<String>? optimizationType,
    pulumi.Output<List<DeepCreatedOriginGroup>>? originGroups,
    pulumi.Output<String>? originHostHeader,
    pulumi.Output<String>? originPath,
    required pulumi.Output<List<DeepCreatedOrigin>> origins,
    pulumi.Output<String>? probePath,
    required pulumi.Output<String> profileName,
    pulumi.Output<QueryStringCachingBehavior>? queryStringCachingBehavior,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<UrlSigningKey>>? urlSigningKeys,
    pulumi.Output<EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink>? webApplicationFirewallPolicyLink,
  }) :
      contentTypesToCompress = pulumi.Input.asOptionalInput<List<String>>(contentTypesToCompress),
      defaultOriginGroup = pulumi.Input.asOptionalInput<ResourceReference>(defaultOriginGroup),
      deliveryPolicy = pulumi.Input.asOptionalInput<EndpointPropertiesUpdateParametersDeliveryPolicy>(deliveryPolicy),
      endpointName = pulumi.Input.asOptionalInput<String>(endpointName),
      geoFilters = pulumi.Input.asOptionalInput<List<GeoFilter>>(geoFilters),
      isCompressionEnabled = pulumi.Input.asOptionalInput<bool>(isCompressionEnabled),
      isHttpAllowed = pulumi.Input.asOptionalInput<bool>(isHttpAllowed),
      isHttpsAllowed = pulumi.Input.asOptionalInput<bool>(isHttpsAllowed),
      location = pulumi.Input.asOptionalInput<String>(location),
      optimizationType = pulumi.Input.asOptionalInput<String>(optimizationType),
      originGroups = pulumi.Input.asOptionalInput<List<DeepCreatedOriginGroup>>(originGroups),
      originHostHeader = pulumi.Input.asOptionalInput<String>(originHostHeader),
      originPath = pulumi.Input.asOptionalInput<String>(originPath),
      origins = pulumi.Input.asInput<List<DeepCreatedOrigin>>(origins),
      probePath = pulumi.Input.asOptionalInput<String>(probePath),
      profileName = pulumi.Input.asInput<String>(profileName),
      queryStringCachingBehavior = pulumi.Input.asOptionalInput<QueryStringCachingBehavior>(queryStringCachingBehavior),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      urlSigningKeys = pulumi.Input.asOptionalInput<List<UrlSigningKey>>(urlSigningKeys),
      webApplicationFirewallPolicyLink = pulumi.Input.asOptionalInput<EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink>(webApplicationFirewallPolicyLink);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentTypesToCompress': ?contentTypesToCompress,
      'defaultOriginGroup': ?pulumi.Input.mapOptionalInputValue<ResourceReference, Map<String, dynamic>>(defaultOriginGroup, (value) => value.toMap()),
      'deliveryPolicy': ?pulumi.Input.mapOptionalInputValue<EndpointPropertiesUpdateParametersDeliveryPolicy, Map<String, dynamic>>(deliveryPolicy, (value) => value.toMap()),
      'endpointName': ?endpointName,
      'geoFilters': ?pulumi.Input.mapOptionalInputValue<List<GeoFilter>, List<Map<String, dynamic>>>(geoFilters, (value) => pulumi.Input.encodeList<GeoFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isCompressionEnabled': ?isCompressionEnabled,
      'isHttpAllowed': ?isHttpAllowed,
      'isHttpsAllowed': ?isHttpsAllowed,
      'location': ?location,
      'optimizationType': ?optimizationType,
      'originGroups': ?pulumi.Input.mapOptionalInputValue<List<DeepCreatedOriginGroup>, List<Map<String, dynamic>>>(originGroups, (value) => pulumi.Input.encodeList<DeepCreatedOriginGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'originHostHeader': ?originHostHeader,
      'originPath': ?originPath,
      'origins': pulumi.Input.mapInputValue<List<DeepCreatedOrigin>, List<Map<String, dynamic>>>(origins, (value) => pulumi.Input.encodeList<DeepCreatedOrigin, Map<String, dynamic>>(value, (value) => value.toMap())),
      'probePath': ?probePath,
      'profileName': profileName,
      'queryStringCachingBehavior': ?pulumi.Input.mapOptionalInputValue<QueryStringCachingBehavior, String>(queryStringCachingBehavior, (value) => value.value),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'urlSigningKeys': ?pulumi.Input.mapOptionalInputValue<List<UrlSigningKey>, List<Map<String, dynamic>>>(urlSigningKeys, (value) => pulumi.Input.encodeList<UrlSigningKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webApplicationFirewallPolicyLink': ?pulumi.Input.mapOptionalInputValue<EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink, Map<String, dynamic>>(webApplicationFirewallPolicyLink, (value) => value.toMap()),
    };
  }

  factory EndpointArgs.fromMap(Map<String, dynamic> map) {
    return EndpointArgs(
      contentTypesToCompress: map['contentTypesToCompress'] == null ? null : pulumi.Output.create<List<String>>((map['contentTypesToCompress'] as List).cast<String>()),
      defaultOriginGroup: map['defaultOriginGroup'] == null ? null : pulumi.Output.create<ResourceReference>(ResourceReference.fromMap((map['defaultOriginGroup'] as Map).cast<String, dynamic>())),
      deliveryPolicy: map['deliveryPolicy'] == null ? null : pulumi.Output.create<EndpointPropertiesUpdateParametersDeliveryPolicy>(EndpointPropertiesUpdateParametersDeliveryPolicy.fromMap((map['deliveryPolicy'] as Map).cast<String, dynamic>())),
      endpointName: map['endpointName'] == null ? null : pulumi.Output.create<String>(map['endpointName'] as String),
      geoFilters: map['geoFilters'] == null ? null : pulumi.Output.create<List<GeoFilter>>(pulumi.Input.decodeList<GeoFilter>(map['geoFilters'], (value) => GeoFilter.fromMap((value as Map).cast<String, dynamic>()))),
      isCompressionEnabled: map['isCompressionEnabled'] == null ? null : pulumi.Output.create<bool>(map['isCompressionEnabled'] as bool),
      isHttpAllowed: map['isHttpAllowed'] == null ? null : pulumi.Output.create<bool>(map['isHttpAllowed'] as bool),
      isHttpsAllowed: map['isHttpsAllowed'] == null ? null : pulumi.Output.create<bool>(map['isHttpsAllowed'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      optimizationType: map['optimizationType'] == null ? null : pulumi.Output.create<String>(map['optimizationType'] as String),
      originGroups: map['originGroups'] == null ? null : pulumi.Output.create<List<DeepCreatedOriginGroup>>(pulumi.Input.decodeList<DeepCreatedOriginGroup>(map['originGroups'], (value) => DeepCreatedOriginGroup.fromMap((value as Map).cast<String, dynamic>()))),
      originHostHeader: map['originHostHeader'] == null ? null : pulumi.Output.create<String>(map['originHostHeader'] as String),
      originPath: map['originPath'] == null ? null : pulumi.Output.create<String>(map['originPath'] as String),
      origins: pulumi.Output.create<List<DeepCreatedOrigin>>(pulumi.Input.decodeList<DeepCreatedOrigin>(map['origins'], (value) => DeepCreatedOrigin.fromMap((value as Map).cast<String, dynamic>()))),
      probePath: map['probePath'] == null ? null : pulumi.Output.create<String>(map['probePath'] as String),
      profileName: pulumi.Output.create<String>(map['profileName'] as String),
      queryStringCachingBehavior: map['queryStringCachingBehavior'] == null ? null : pulumi.Output.create<QueryStringCachingBehavior>(QueryStringCachingBehavior.fromValue(map['queryStringCachingBehavior'] as String)),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      urlSigningKeys: map['urlSigningKeys'] == null ? null : pulumi.Output.create<List<UrlSigningKey>>(pulumi.Input.decodeList<UrlSigningKey>(map['urlSigningKeys'], (value) => UrlSigningKey.fromMap((value as Map).cast<String, dynamic>()))),
      webApplicationFirewallPolicyLink: map['webApplicationFirewallPolicyLink'] == null ? null : pulumi.Output.create<EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink>(EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink.fromMap((map['webApplicationFirewallPolicyLink'] as Map).cast<String, dynamic>())),
    );
  }
}

