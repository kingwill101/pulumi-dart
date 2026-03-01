// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// {@template pulumi_dnsresolver_outbound_endpoint_args_doc}
/// The set of arguments for OutboundEndpoint.
/// {@endtemplate}
/// {@macro pulumi_dnsresolver_outbound_endpoint_args_doc}
class OutboundEndpointArgs {
  /// The name of the DNS resolver.
  final pulumi.Input<String> dnsResolverName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the outbound endpoint for the DNS resolver.
  final pulumi.Input<String>? outboundEndpointName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The reference to the subnet used for the outbound endpoint.
  final pulumi.Input<SubResource> subnet;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [OutboundEndpointArgs].
  /// [dnsResolverName] The name of the DNS resolver.
  /// [location] The geo-location where the resource lives
  /// [outboundEndpointName] The name of the outbound endpoint for the DNS resolver.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [subnet] The reference to the subnet used for the outbound endpoint.
  /// [tags] Resource tags.
  OutboundEndpointArgs({
    required String dnsResolverName,
    String? location,
    String? outboundEndpointName,
    required String resourceGroupName,
    required SubResource subnet,
    Map<String, String>? tags,
  }) :
      dnsResolverName = pulumi.Input.asInput<String>(dnsResolverName),
      location = pulumi.Input.asOptionalInput<String>(location),
      outboundEndpointName = pulumi.Input.asOptionalInput<String>(outboundEndpointName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subnet = pulumi.Input.asInput<SubResource>(subnet),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsResolverName': dnsResolverName,
      'location': ?location,
      'outboundEndpointName': ?outboundEndpointName,
      'resourceGroupName': resourceGroupName,
      'subnet': pulumi.Input.mapInputValue<SubResource, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory OutboundEndpointArgs.fromMap(Map<String, dynamic> map) {
    return OutboundEndpointArgs(
      dnsResolverName: map['dnsResolverName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      outboundEndpointName: map['outboundEndpointName'] == null ? null : map['outboundEndpointName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      subnet: SubResource.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

