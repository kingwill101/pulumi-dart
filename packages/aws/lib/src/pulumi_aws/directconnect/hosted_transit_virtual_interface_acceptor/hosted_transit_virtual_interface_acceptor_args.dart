// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for HostedTransitVirtualInterfaceAcceptor.
class HostedTransitVirtualInterfaceAcceptorArgs {
  /// The ID of the Direct Connect gateway to which to connect the virtual interface.
  final Input<String> dxGatewayId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The ID of the Direct Connect virtual interface to accept.
  final Input<String> virtualInterfaceId;

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
      dxGatewayId: Input.asInput<String>(map['dxGatewayId']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      virtualInterfaceId: Input.asInput<String>(map['virtualInterfaceId']),
    );
  }
}
