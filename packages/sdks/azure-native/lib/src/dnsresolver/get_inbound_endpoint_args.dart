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
    required pulumi.Output<String> dnsResolverName,
    required pulumi.Output<String> inboundEndpointName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      dnsResolverName = pulumi.Input.asInput<String>(dnsResolverName),
      inboundEndpointName = pulumi.Input.asInput<String>(inboundEndpointName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsResolverName': dnsResolverName,
      'inboundEndpointName': inboundEndpointName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetInboundEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetInboundEndpointArgs(
      dnsResolverName: pulumi.Output.create<String>(map['dnsResolverName'] as String),
      inboundEndpointName: pulumi.Output.create<String>(map['inboundEndpointName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

