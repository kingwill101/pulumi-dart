// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_origin_args_doc}
/// The set of arguments for Origin.
/// {@endtemplate}
/// {@macro pulumi_cdn_origin_args_doc}
class OriginArgs {
  /// Origin is enabled for load balancing or not
  final pulumi.Input<bool>? enabled;
  /// Name of the endpoint under the profile which is unique globally.
  final pulumi.Input<String> endpointName;
  /// The address of the origin. Domain names, IPv4 addresses, and IPv6 addresses are supported.This should be unique across all origins in an endpoint.
  final pulumi.Input<String> hostName;
  /// The value of the HTTP port. Must be between 1 and 65535.
  final pulumi.Input<int>? httpPort;
  /// The value of the HTTPS port. Must be between 1 and 65535.
  final pulumi.Input<int>? httpsPort;
  /// The host header value sent to the origin with each request. If you leave this blank, the request hostname determines this value. Azure CDN origins, such as Web Apps, Blob Storage, and Cloud Services require this host header value to match the origin hostname by default. This overrides the host header defined at Endpoint
  final pulumi.Input<String>? originHostHeader;
  /// Name of the origin which is unique within the endpoint.
  final pulumi.Input<String>? originName;
  /// Priority of origin in given origin group for load balancing. Higher priorities will not be used for load balancing if any lower priority origin is healthy.Must be between 1 and 5
  final pulumi.Input<int>? priority;
  /// The Alias of the Private Link resource. Populating this optional field indicates that this origin is 'Private'
  final pulumi.Input<String>? privateLinkAlias;
  /// A custom message to be included in the approval request to connect to the Private Link.
  final pulumi.Input<String>? privateLinkApprovalMessage;
  /// The location of the Private Link resource. Required only if 'privateLinkResourceId' is populated
  final pulumi.Input<String>? privateLinkLocation;
  /// The Resource Id of the Private Link resource. Populating this optional field indicates that this backend is 'Private'
  final pulumi.Input<String>? privateLinkResourceId;
  /// Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Weight of the origin in given origin group for load balancing. Must be between 1 and 1000
  final pulumi.Input<int>? weight;

  /// Creates a new [OriginArgs].
  /// [enabled] Origin is enabled for load balancing or not
  /// [endpointName] Name of the endpoint under the profile which is unique globally.
  /// [hostName] The address of the origin. Domain names, IPv4 addresses, and IPv6 addresses are supported.This should be unique across all origins in an endpoint.
  /// [httpPort] The value of the HTTP port. Must be between 1 and 65535.
  /// [httpsPort] The value of the HTTPS port. Must be between 1 and 65535.
  /// [originHostHeader] The host header value sent to the origin with each request. If you leave this blank, the request hostname determines this value. Azure CDN origins, such as Web Apps, Blob Storage, and Cloud Services require this host header value to match the origin hostname by default. This overrides the host header defined at Endpoint
  /// [originName] Name of the origin which is unique within the endpoint.
  /// [priority] Priority of origin in given origin group for load balancing. Higher priorities will not be used for load balancing if any lower priority origin is healthy.Must be between 1 and 5
  /// [privateLinkAlias] The Alias of the Private Link resource. Populating this optional field indicates that this origin is 'Private'
  /// [privateLinkApprovalMessage] A custom message to be included in the approval request to connect to the Private Link.
  /// [privateLinkLocation] The location of the Private Link resource. Required only if 'privateLinkResourceId' is populated
  /// [privateLinkResourceId] The Resource Id of the Private Link resource. Populating this optional field indicates that this backend is 'Private'
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [weight] Weight of the origin in given origin group for load balancing. Must be between 1 and 1000
  OriginArgs({
    this.enabled,
    required this.endpointName,
    required this.hostName,
    this.httpPort,
    this.httpsPort,
    this.originHostHeader,
    this.originName,
    this.priority,
    this.privateLinkAlias,
    this.privateLinkApprovalMessage,
    this.privateLinkLocation,
    this.privateLinkResourceId,
    required this.profileName,
    required this.resourceGroupName,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'endpointName': endpointName,
      'hostName': hostName,
      'httpPort': ?httpPort,
      'httpsPort': ?httpsPort,
      'originHostHeader': ?originHostHeader,
      'originName': ?originName,
      'priority': ?priority,
      'privateLinkAlias': ?privateLinkAlias,
      'privateLinkApprovalMessage': ?privateLinkApprovalMessage,
      'privateLinkLocation': ?privateLinkLocation,
      'privateLinkResourceId': ?privateLinkResourceId,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'weight': ?weight,
    };
  }

  factory OriginArgs.fromMap(Map<String, dynamic> map) {
    return OriginArgs(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      endpointName: (map['endpointName'] as String).input(),
      hostName: (map['hostName'] as String).input(),
      httpPort: map['httpPort'] == null ? null : (map['httpPort'] as int).input(),
      httpsPort: map['httpsPort'] == null ? null : (map['httpsPort'] as int).input(),
      originHostHeader: map['originHostHeader'] == null ? null : (map['originHostHeader'] as String).input(),
      originName: map['originName'] == null ? null : (map['originName'] as String).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      privateLinkAlias: map['privateLinkAlias'] == null ? null : (map['privateLinkAlias'] as String).input(),
      privateLinkApprovalMessage: map['privateLinkApprovalMessage'] == null ? null : (map['privateLinkApprovalMessage'] as String).input(),
      privateLinkLocation: map['privateLinkLocation'] == null ? null : (map['privateLinkLocation'] as String).input(),
      privateLinkResourceId: map['privateLinkResourceId'] == null ? null : (map['privateLinkResourceId'] as String).input(),
      profileName: (map['profileName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      weight: map['weight'] == null ? null : (map['weight'] as int).input(),
    );
  }
}

