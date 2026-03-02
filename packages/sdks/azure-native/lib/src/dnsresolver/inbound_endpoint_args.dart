// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_configuration.dart';

/// {@template pulumi_dnsresolver_inbound_endpoint_args_doc}
/// The set of arguments for InboundEndpoint.
/// {@endtemplate}
/// {@macro pulumi_dnsresolver_inbound_endpoint_args_doc}
class InboundEndpointArgs {
  /// The name of the DNS resolver.
  final pulumi.Input<String> dnsResolverName;
  /// The name of the inbound endpoint for the DNS resolver.
  final pulumi.Input<String>? inboundEndpointName;
  /// IP configurations for the inbound endpoint.
  final pulumi.Input<List<IpConfiguration>> ipConfigurations;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [InboundEndpointArgs].
  /// [dnsResolverName] The name of the DNS resolver.
  /// [inboundEndpointName] The name of the inbound endpoint for the DNS resolver.
  /// [ipConfigurations] IP configurations for the inbound endpoint.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  InboundEndpointArgs({
    required this.dnsResolverName,
    this.inboundEndpointName,
    required this.ipConfigurations,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsResolverName': dnsResolverName,
      'inboundEndpointName': ?inboundEndpointName,
      'ipConfigurations': pulumi.Input.mapInputValue<List<IpConfiguration>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<IpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory InboundEndpointArgs.fromMap(Map<String, dynamic> map) {
    return InboundEndpointArgs(
      dnsResolverName: (map['dnsResolverName'] as String).input(),
      inboundEndpointName: map['inboundEndpointName'] == null ? null : (map['inboundEndpointName'] as String).input(),
      ipConfigurations: (pulumi.Input.decodeList<IpConfiguration>(map['ipConfigurations'], (value) => IpConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

