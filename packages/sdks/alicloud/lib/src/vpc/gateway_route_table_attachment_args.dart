// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_gateway_route_table_attachment_gateway_route_table_attachment_args_doc}
/// The set of arguments for GatewayRouteTableAttachment.
/// {@endtemplate}
/// {@macro pulumi_vpc_gateway_route_table_attachment_gateway_route_table_attachment_args_doc}
class GatewayRouteTableAttachmentArgs {
  /// Specifies whether to only precheck this request. Default value: `false`.
  final pulumi.Input<bool>? dryRun;
  /// The ID of the IPv4 Gateway instance.
  final pulumi.Input<String> ipv4GatewayId;
  /// The ID of the Gateway route table to be bound.
  final pulumi.Input<String> routeTableId;

  /// Creates a new [GatewayRouteTableAttachmentArgs].
  /// [dryRun] Specifies whether to only precheck this request. Default value: `false`.
  /// [ipv4GatewayId] The ID of the IPv4 Gateway instance.
  /// [routeTableId] The ID of the Gateway route table to be bound.
  GatewayRouteTableAttachmentArgs({
    this.dryRun,
    required this.ipv4GatewayId,
    required this.routeTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'ipv4GatewayId': ipv4GatewayId,
      'routeTableId': routeTableId,
    };
  }

  factory GatewayRouteTableAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GatewayRouteTableAttachmentArgs(
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipv4GatewayId: pulumi.Input.fromValue(map['ipv4GatewayId'] as String),
      routeTableId: pulumi.Input.fromValue(map['routeTableId'] as String),
    );
  }
}

