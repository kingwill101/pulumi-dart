// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dnsresolver_get_outbound_endpoint_args_doc}
/// Arguments for getOutboundEndpoint.
/// {@endtemplate}
/// {@macro pulumi_dnsresolver_get_outbound_endpoint_args_doc}
class GetOutboundEndpointArgs {
  /// The name of the DNS resolver.
  final pulumi.Input<String> dnsResolverName;
  /// The name of the outbound endpoint for the DNS resolver.
  final pulumi.Input<String> outboundEndpointName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetOutboundEndpointArgs].
  /// [dnsResolverName] The name of the DNS resolver.
  /// [outboundEndpointName] The name of the outbound endpoint for the DNS resolver.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetOutboundEndpointArgs({
    required pulumi.Output<String> dnsResolverName,
    required pulumi.Output<String> outboundEndpointName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      dnsResolverName = pulumi.Input.asInput<String>(dnsResolverName),
      outboundEndpointName = pulumi.Input.asInput<String>(outboundEndpointName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsResolverName': dnsResolverName,
      'outboundEndpointName': outboundEndpointName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetOutboundEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetOutboundEndpointArgs(
      dnsResolverName: pulumi.Output.create<String>(map['dnsResolverName'] as String),
      outboundEndpointName: pulumi.Output.create<String>(map['outboundEndpointName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

