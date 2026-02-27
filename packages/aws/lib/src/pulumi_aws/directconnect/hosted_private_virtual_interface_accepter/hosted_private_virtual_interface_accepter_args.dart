// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for HostedPrivateVirtualInterfaceAccepter.
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

  HostedPrivateVirtualInterfaceAccepterArgs({
    this.dxGatewayId,
    this.region,
    this.tags,
    required this.virtualInterfaceId,
    this.vpnGatewayId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dxGatewayIdValue = dxGatewayId;
    if (dxGatewayIdValue != null) {
      map['dxGatewayId'] = dxGatewayIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['virtualInterfaceId'] = virtualInterfaceId;
    final vpnGatewayIdValue = vpnGatewayId;
    if (vpnGatewayIdValue != null) {
      map['vpnGatewayId'] = vpnGatewayIdValue;
    }
    return map;
  }

  factory HostedPrivateVirtualInterfaceAccepterArgs.fromMap(
      Map<String, dynamic> map) {
    return HostedPrivateVirtualInterfaceAccepterArgs(
      dxGatewayId: pulumi.Input.asOptionalInput<String>(map['dxGatewayId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      virtualInterfaceId:
          pulumi.Input.asInput<String>(map['virtualInterfaceId']),
      vpnGatewayId: pulumi.Input.asOptionalInput<String>(map['vpnGatewayId']),
    );
  }
}
