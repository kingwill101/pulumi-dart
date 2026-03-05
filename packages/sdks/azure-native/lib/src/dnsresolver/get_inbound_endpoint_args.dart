// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dnsresolver_get_inbound_endpoint_args_doc}
/// Arguments for getInboundEndpoint.
/// {@endtemplate}
/// {@macro pulumi_dnsresolver_get_inbound_endpoint_args_doc}
class GetInboundEndpointArgs {
  /// The name of the DNS resolver.
  final pulumi.Input<String> dnsResolverName;
  /// The name of the inbound endpoint for the DNS resolver.
  final pulumi.Input<String> inboundEndpointName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetInboundEndpointArgs].
  /// [dnsResolverName] The name of the DNS resolver.
  /// [inboundEndpointName] The name of the inbound endpoint for the DNS resolver.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetInboundEndpointArgs({
    required this.dnsResolverName,
    required this.inboundEndpointName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsResolverName': dnsResolverName,
      'inboundEndpointName': inboundEndpointName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetInboundEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetInboundEndpointArgs(
      dnsResolverName: pulumi.Input.fromValue(map['dnsResolverName'] as String),
      inboundEndpointName: pulumi.Input.fromValue(map['inboundEndpointName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

