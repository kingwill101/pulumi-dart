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
    required this.dnsResolverName,
    this.location,
    this.outboundEndpointName,
    required this.resourceGroupName,
    required this.subnet,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsResolverName': dnsResolverName,
      'location': ?location,
      'outboundEndpointName': ?outboundEndpointName,
      'resourceGroupName': resourceGroupName,
      'subnet': pulumi.Input.mapInputValue<SubResource, Map<String, dynamic>>(
        subnet,
        (value) => value.toMap(),
      ),
      'tags': ?tags,
    };
  }

  factory OutboundEndpointArgs.fromMap(Map<String, dynamic> map) {
    return OutboundEndpointArgs(
      dnsResolverName: pulumi.Input.fromValue(map['dnsResolverName'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outboundEndpointName: (() {
        final guardedValue = map['outboundEndpointName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      subnet: pulumi.Input.fromValue(
        SubResource.fromMap((map['subnet']! as Map).cast<String, dynamic>()),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
