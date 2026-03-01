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
    required pulumi.Output<String> dnsResolverName,
    pulumi.Output<String>? inboundEndpointName,
    required pulumi.Output<List<IpConfiguration>> ipConfigurations,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      dnsResolverName = pulumi.Input.asInput<String>(dnsResolverName),
      inboundEndpointName = pulumi.Input.asOptionalInput<String>(inboundEndpointName),
      ipConfigurations = pulumi.Input.asInput<List<IpConfiguration>>(ipConfigurations),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      dnsResolverName: pulumi.Output.create<String>(map['dnsResolverName'] as String),
      inboundEndpointName: map['inboundEndpointName'] == null ? null : pulumi.Output.create<String>(map['inboundEndpointName'] as String),
      ipConfigurations: pulumi.Output.create<List<IpConfiguration>>(pulumi.Input.decodeList<IpConfiguration>(map['ipConfigurations'], (value) => IpConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

