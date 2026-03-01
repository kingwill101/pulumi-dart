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
    pulumi.Output<bool>? dryRun,
    required pulumi.Output<String> ipv4GatewayId,
    required pulumi.Output<String> routeTableId,
  }) :
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      ipv4GatewayId = pulumi.Input.asInput<String>(ipv4GatewayId),
      routeTableId = pulumi.Input.asInput<String>(routeTableId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'ipv4GatewayId': ipv4GatewayId,
      'routeTableId': routeTableId,
    };
  }

  factory GatewayRouteTableAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GatewayRouteTableAttachmentArgs(
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      ipv4GatewayId: pulumi.Output.create<String>(map['ipv4GatewayId'] as String),
      routeTableId: pulumi.Output.create<String>(map['routeTableId'] as String),
    );
  }
}

