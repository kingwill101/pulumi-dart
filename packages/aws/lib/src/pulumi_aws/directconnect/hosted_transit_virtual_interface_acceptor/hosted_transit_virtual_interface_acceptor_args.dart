// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for HostedTransitVirtualInterfaceAcceptor.
class HostedTransitVirtualInterfaceAcceptorArgs {
  /// The ID of the Direct Connect gateway to which to connect the virtual interface.
  final pulumi.Input<String> dxGatewayId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The ID of the Direct Connect virtual interface to accept.
  final pulumi.Input<String> virtualInterfaceId;

  HostedTransitVirtualInterfaceAcceptorArgs({
    required this.dxGatewayId,
    this.region,
    this.tags,
    required this.virtualInterfaceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dxGatewayId'] = dxGatewayId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['virtualInterfaceId'] = virtualInterfaceId;
    return map;
  }

  factory HostedTransitVirtualInterfaceAcceptorArgs.fromMap(
      Map<String, dynamic> map) {
    return HostedTransitVirtualInterfaceAcceptorArgs(
      dxGatewayId: pulumi.Input.asInput<String>(map['dxGatewayId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      virtualInterfaceId:
          pulumi.Input.asInput<String>(map['virtualInterfaceId']),
    );
  }
}
