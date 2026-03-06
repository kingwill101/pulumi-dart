// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_route_table_attachment_route_table_attachment_args_doc}
/// The set of arguments for RouteTableAttachment.
/// {@endtemplate}
/// {@macro pulumi_vpc_route_table_attachment_route_table_attachment_args_doc}
class RouteTableAttachmentArgs {
  /// The ID of the route table to be bound to the switch.
  final pulumi.Input<String> routeTableId;
  /// The ID of the switch to bind the route table.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [RouteTableAttachmentArgs].
  /// [routeTableId] The ID of the route table to be bound to the switch.
  /// [vswitchId] The ID of the switch to bind the route table.
  const RouteTableAttachmentArgs({
    required this.routeTableId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routeTableId': routeTableId,
      'vswitchId': vswitchId,
    };
  }

  factory RouteTableAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return RouteTableAttachmentArgs(
      routeTableId: pulumi.Input.fromValue(map['routeTableId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}

