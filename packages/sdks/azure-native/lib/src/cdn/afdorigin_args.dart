// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference.dart';
import 'shared_private_link_resource_properties.dart';

/// {@template pulumi_cdn_afdorigin_args_doc}
/// The set of arguments for AFDOrigin.
/// {@endtemplate}
/// {@macro pulumi_cdn_afdorigin_args_doc}
class AFDOriginArgs {
  /// Resource reference to the Azure origin resource.
  final pulumi.Input<ResourceReference>? azureOrigin;
  /// Whether to enable health probes to be made against backends defined under backendPools. Health probes can only be disabled if there is a single enabled backend in single enabled backend pool.
  final pulumi.Input<String>? enabledState;
  /// Whether to enable certificate name check at origin level
  final pulumi.Input<bool>? enforceCertificateNameCheck;
  /// The address of the origin. Domain names, IPv4 addresses, and IPv6 addresses are supported.This should be unique across all origins in an endpoint.
  final pulumi.Input<String>? hostName;
  /// The value of the HTTP port. Must be between 1 and 65535.
  final pulumi.Input<int>? httpPort;
  /// The value of the HTTPS port. Must be between 1 and 65535.
  final pulumi.Input<int>? httpsPort;
  /// Name of the origin group which is unique within the endpoint.
  final pulumi.Input<String> originGroupName;
  /// The host header value sent to the origin with each request. If you leave this blank, the request hostname determines this value. Azure Front Door origins, such as Web Apps, Blob Storage, and Cloud Services require this host header value to match the origin hostname by default. This overrides the host header defined at Endpoint
  final pulumi.Input<String>? originHostHeader;
  /// Name of the origin which is unique within the profile.
  final pulumi.Input<String>? originName;
  /// Priority of origin in given origin group for load balancing. Higher priorities will not be used for load balancing if any lower priority origin is healthy.Must be between 1 and 5
  final pulumi.Input<int>? priority;
  /// Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The properties of the private link resource for private origin.
  final pulumi.Input<SharedPrivateLinkResourceProperties>? sharedPrivateLinkResource;
  /// Weight of the origin in given origin group for load balancing. Must be between 1 and 1000
  final pulumi.Input<int>? weight;

  /// Creates a new [AFDOriginArgs].
  /// [azureOrigin] Resource reference to the Azure origin resource.
  /// [enabledState] Whether to enable health probes to be made against backends defined under backendPools. Health probes can only be disabled if there is a single enabled backend in single enabled backend pool.
  /// [enforceCertificateNameCheck] Whether to enable certificate name check at origin level
  /// [hostName] The address of the origin. Domain names, IPv4 addresses, and IPv6 addresses are supported.This should be unique across all origins in an endpoint.
  /// [httpPort] The value of the HTTP port. Must be between 1 and 65535.
  /// [httpsPort] The value of the HTTPS port. Must be between 1 and 65535.
  /// [originGroupName] Name of the origin group which is unique within the endpoint.
  /// [originHostHeader] The host header value sent to the origin with each request. If you leave this blank, the request hostname determines this value. Azure Front Door origins, such as Web Apps, Blob Storage, and Cloud Services require this host header value to match the origin hostname by default. This overrides the host header defined at Endpoint
  /// [originName] Name of the origin which is unique within the profile.
  /// [priority] Priority of origin in given origin group for load balancing. Higher priorities will not be used for load balancing if any lower priority origin is healthy.Must be between 1 and 5
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sharedPrivateLinkResource] The properties of the private link resource for private origin.
  /// [weight] Weight of the origin in given origin group for load balancing. Must be between 1 and 1000
  AFDOriginArgs({
    this.azureOrigin,
    this.enabledState,
    this.enforceCertificateNameCheck,
    this.hostName,
    this.httpPort,
    this.httpsPort,
    required this.originGroupName,
    this.originHostHeader,
    this.originName,
    this.priority,
    required this.profileName,
    required this.resourceGroupName,
    this.sharedPrivateLinkResource,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureOrigin': ?pulumi.Input.mapOptionalInputValue<ResourceReference, Map<String, dynamic>>(azureOrigin, (value) => value.toMap()),
      'enabledState': ?enabledState,
      'enforceCertificateNameCheck': ?enforceCertificateNameCheck,
      'hostName': ?hostName,
      'httpPort': ?httpPort,
      'httpsPort': ?httpsPort,
      'originGroupName': originGroupName,
      'originHostHeader': ?originHostHeader,
      'originName': ?originName,
      'priority': ?priority,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'sharedPrivateLinkResource': ?pulumi.Input.mapOptionalInputValue<SharedPrivateLinkResourceProperties, Map<String, dynamic>>(sharedPrivateLinkResource, (value) => value.toMap()),
      'weight': ?weight,
    };
  }

  factory AFDOriginArgs.fromMap(Map<String, dynamic> map) {
    return AFDOriginArgs(
      azureOrigin: map['azureOrigin'] == null ? null : (ResourceReference.fromMap((map['azureOrigin'] as Map).cast<String, dynamic>())).input(),
      enabledState: map['enabledState'] == null ? null : (map['enabledState'] as String).input(),
      enforceCertificateNameCheck: map['enforceCertificateNameCheck'] == null ? null : (map['enforceCertificateNameCheck'] as bool).input(),
      hostName: map['hostName'] == null ? null : (map['hostName'] as String).input(),
      httpPort: map['httpPort'] == null ? null : (map['httpPort'] as int).input(),
      httpsPort: map['httpsPort'] == null ? null : (map['httpsPort'] as int).input(),
      originGroupName: (map['originGroupName'] as String).input(),
      originHostHeader: map['originHostHeader'] == null ? null : (map['originHostHeader'] as String).input(),
      originName: map['originName'] == null ? null : (map['originName'] as String).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      profileName: (map['profileName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sharedPrivateLinkResource: map['sharedPrivateLinkResource'] == null ? null : (SharedPrivateLinkResourceProperties.fromMap((map['sharedPrivateLinkResource'] as Map).cast<String, dynamic>())).input(),
      weight: map['weight'] == null ? null : (map['weight'] as int).input(),
    );
  }
}

