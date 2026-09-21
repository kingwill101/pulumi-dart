// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HostedPrivateVirtualInterfaceAccepter resources.
class HostedPrivateVirtualInterfaceAccepterState {
  /// The ARN of the virtual interface.
  final pulumi.Input<String?>? arn;
  /// The ID of the Direct Connect gateway to which to connect the virtual interface.
  final pulumi.Input<String?>? dxGatewayId;
  /// The number of inbound IPv4 route prefixes to allocate to the virtual interface. Valid values are `0` to `1000`. If not specified, AWS applies the default allocation of `100`.
  final pulumi.Input<int?>? prefixPoolAllocatedCountIpv4;
  /// The number of inbound IPv6 route prefixes to allocate to the virtual interface. Valid values are `0` to `1000`. If not specified, AWS applies the default allocation of `100`.
  final pulumi.Input<int?>? prefixPoolAllocatedCountIpv6;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// The ID of the Direct Connect virtual interface to accept.
  final pulumi.Input<String?>? virtualInterfaceId;
  /// The ID of the virtual private gateway to which to connect the virtual interface.
  final pulumi.Input<String?>? vpnGatewayId;

  /// Creates a new [HostedPrivateVirtualInterfaceAccepterState].
  /// [arn] The ARN of the virtual interface.
  /// [dxGatewayId] The ID of the Direct Connect gateway to which to connect the virtual interface.
  /// [prefixPoolAllocatedCountIpv4] The number of inbound IPv4 route prefixes to allocate to the virtual interface. Valid values are `0` to `1000`. If not specified, AWS applies the default allocation of `100`.
  /// [prefixPoolAllocatedCountIpv6] The number of inbound IPv6 route prefixes to allocate to the virtual interface. Valid values are `0` to `1000`. If not specified, AWS applies the default allocation of `100`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [virtualInterfaceId] The ID of the Direct Connect virtual interface to accept.
  /// [vpnGatewayId] The ID of the virtual private gateway to which to connect the virtual interface.
  const HostedPrivateVirtualInterfaceAccepterState({
    this.arn,
    this.dxGatewayId,
    this.prefixPoolAllocatedCountIpv4,
    this.prefixPoolAllocatedCountIpv6,
    this.region,
    this.tags,
    this.tagsAll,
    this.virtualInterfaceId,
    this.vpnGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'dxGatewayId': ?dxGatewayId,
      'prefixPoolAllocatedCountIpv4': ?prefixPoolAllocatedCountIpv4,
      'prefixPoolAllocatedCountIpv6': ?prefixPoolAllocatedCountIpv6,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'virtualInterfaceId': ?virtualInterfaceId,
      'vpnGatewayId': ?vpnGatewayId,
    };
  }

  factory HostedPrivateVirtualInterfaceAccepterState.fromMap(Map<String, dynamic> map) {
    return HostedPrivateVirtualInterfaceAccepterState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dxGatewayId: (() { final guardedValue = map['dxGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefixPoolAllocatedCountIpv4: (() { final guardedValue = map['prefixPoolAllocatedCountIpv4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      prefixPoolAllocatedCountIpv6: (() { final guardedValue = map['prefixPoolAllocatedCountIpv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualInterfaceId: (() { final guardedValue = map['virtualInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpnGatewayId: (() { final guardedValue = map['vpnGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
