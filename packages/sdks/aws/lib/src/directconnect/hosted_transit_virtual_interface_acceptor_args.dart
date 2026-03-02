// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directconnect_hosted_transit_virtual_interface_acceptor_hosted_transit_virtual_interface_acceptor_args_doc}
/// The set of arguments for HostedTransitVirtualInterfaceAcceptor.
/// {@endtemplate}
/// {@macro pulumi_directconnect_hosted_transit_virtual_interface_acceptor_hosted_transit_virtual_interface_acceptor_args_doc}
class HostedTransitVirtualInterfaceAcceptorArgs {
  /// The ID of the Direct Connect gateway to which to connect the virtual interface.
  final pulumi.Input<String> dxGatewayId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the Direct Connect virtual interface to accept.
  final pulumi.Input<String> virtualInterfaceId;

  /// Creates a new [HostedTransitVirtualInterfaceAcceptorArgs].
  /// [dxGatewayId] The ID of the Direct Connect gateway to which to connect the virtual interface.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [virtualInterfaceId] The ID of the Direct Connect virtual interface to accept.
  HostedTransitVirtualInterfaceAcceptorArgs({
    required this.dxGatewayId,
    this.region,
    this.tags,
    required this.virtualInterfaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dxGatewayId': dxGatewayId,
      'region': ?region,
      'tags': ?tags,
      'virtualInterfaceId': virtualInterfaceId,
    };
  }

  factory HostedTransitVirtualInterfaceAcceptorArgs.fromMap(Map<String, dynamic> map) {
    return HostedTransitVirtualInterfaceAcceptorArgs(
      dxGatewayId: (map['dxGatewayId'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      virtualInterfaceId: (map['virtualInterfaceId'] as String).input(),
    );
  }
}

