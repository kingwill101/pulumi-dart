// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directconnect_hosted_transit_virtual_interface_acceptor_hosted_transit_virtual_interface_acceptor_args_doc}
/// The set of arguments for HostedTransitVirtualInterfaceAcceptor.
/// {@endtemplate}
/// {@macro pulumi_directconnect_hosted_transit_virtual_interface_acceptor_hosted_transit_virtual_interface_acceptor_args_doc}
class HostedTransitVirtualInterfaceAcceptorArgs {
  /// The ID of the Direct Connect gateway to which to connect the virtual interface.
  final pulumi.Input<String> dxGatewayId;
  /// The number of inbound IPv4 route prefixes to allocate to the virtual interface. Valid values are `0` to `1000`. If not specified, AWS applies the default allocation of `100`.
  final pulumi.Input<int?>? prefixPoolAllocatedCountIpv4;
  /// The number of inbound IPv6 route prefixes to allocate to the virtual interface. Valid values are `0` to `1000`. If not specified, AWS applies the default allocation of `100`.
  final pulumi.Input<int?>? prefixPoolAllocatedCountIpv6;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The ID of the Direct Connect virtual interface to accept.
  final pulumi.Input<String> virtualInterfaceId;

  /// Creates a new [HostedTransitVirtualInterfaceAcceptorArgs].
  /// [dxGatewayId] The ID of the Direct Connect gateway to which to connect the virtual interface.
  /// [prefixPoolAllocatedCountIpv4] The number of inbound IPv4 route prefixes to allocate to the virtual interface. Valid values are `0` to `1000`. If not specified, AWS applies the default allocation of `100`.
  /// [prefixPoolAllocatedCountIpv6] The number of inbound IPv6 route prefixes to allocate to the virtual interface. Valid values are `0` to `1000`. If not specified, AWS applies the default allocation of `100`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [virtualInterfaceId] The ID of the Direct Connect virtual interface to accept.
  const HostedTransitVirtualInterfaceAcceptorArgs({
    required this.dxGatewayId,
    this.prefixPoolAllocatedCountIpv4,
    this.prefixPoolAllocatedCountIpv6,
    this.region,
    this.tags,
    required this.virtualInterfaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dxGatewayId': dxGatewayId,
      'prefixPoolAllocatedCountIpv4': ?prefixPoolAllocatedCountIpv4,
      'prefixPoolAllocatedCountIpv6': ?prefixPoolAllocatedCountIpv6,
      'region': ?region,
      'tags': ?tags,
      'virtualInterfaceId': virtualInterfaceId,
    };
  }

  factory HostedTransitVirtualInterfaceAcceptorArgs.fromMap(Map<String, dynamic> map) {
    return HostedTransitVirtualInterfaceAcceptorArgs(
      dxGatewayId: pulumi.Input.fromValue(map['dxGatewayId'] as String),
      prefixPoolAllocatedCountIpv4: (() { final guardedValue = map['prefixPoolAllocatedCountIpv4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      prefixPoolAllocatedCountIpv6: (() { final guardedValue = map['prefixPoolAllocatedCountIpv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualInterfaceId: pulumi.Input.fromValue(map['virtualInterfaceId'] as String),
    );
  }
}
