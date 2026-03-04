// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directconnect_hosted_private_virtual_interface_accepter_hosted_private_virtual_interface_accepter_args_doc}
/// The set of arguments for HostedPrivateVirtualInterfaceAccepter.
/// {@endtemplate}
/// {@macro pulumi_directconnect_hosted_private_virtual_interface_accepter_hosted_private_virtual_interface_accepter_args_doc}
class HostedPrivateVirtualInterfaceAccepterArgs {
  /// The ID of the Direct Connect gateway to which to connect the virtual interface.
  final pulumi.Input<String>? dxGatewayId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The ID of the Direct Connect virtual interface to accept.
  final pulumi.Input<String> virtualInterfaceId;

  /// The ID of the virtual private gateway to which to connect the virtual interface.
  final pulumi.Input<String>? vpnGatewayId;

  /// Creates a new [HostedPrivateVirtualInterfaceAccepterArgs].
  /// [dxGatewayId] The ID of the Direct Connect gateway to which to connect the virtual interface.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [virtualInterfaceId] The ID of the Direct Connect virtual interface to accept.
  /// [vpnGatewayId] The ID of the virtual private gateway to which to connect the virtual interface.
  HostedPrivateVirtualInterfaceAccepterArgs({
    this.dxGatewayId,
    this.region,
    this.tags,
    required this.virtualInterfaceId,
    this.vpnGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dxGatewayId': ?dxGatewayId,
      'region': ?region,
      'tags': ?tags,
      'virtualInterfaceId': virtualInterfaceId,
      'vpnGatewayId': ?vpnGatewayId,
    };
  }

  factory HostedPrivateVirtualInterfaceAccepterArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return HostedPrivateVirtualInterfaceAccepterArgs(
      dxGatewayId: (() {
        final guardedValue = map['dxGatewayId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      virtualInterfaceId: pulumi.Input.fromValue(
        map['virtualInterfaceId'] as String,
      ),
      vpnGatewayId: (() {
        final guardedValue = map['vpnGatewayId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
