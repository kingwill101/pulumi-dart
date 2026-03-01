// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouteTableAttachment resources.
class RouteTableAttachmentState {
  /// The ID of the route table to be bound to the switch.
  final pulumi.Input<String>? routeTableId;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// The ID of the switch to bind the route table.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [RouteTableAttachmentState].
  /// [routeTableId] The ID of the route table to be bound to the switch.
  /// [status] The status of the resource.
  /// [vswitchId] The ID of the switch to bind the route table.
  RouteTableAttachmentState({
    pulumi.Output<String>? routeTableId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vswitchId,
  }) :
      routeTableId = pulumi.Input.asOptionalInput<String>(routeTableId),
      status = pulumi.Input.asOptionalInput<String>(status),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routeTableId': ?routeTableId,
      'status': ?status,
      'vswitchId': ?vswitchId,
    };
  }

  factory RouteTableAttachmentState.fromMap(Map<String, dynamic> map) {
    return RouteTableAttachmentState(
      routeTableId: map['routeTableId'] == null ? null : pulumi.Output.create<String>(map['routeTableId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

