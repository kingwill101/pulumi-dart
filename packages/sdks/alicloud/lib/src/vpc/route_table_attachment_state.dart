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
  const RouteTableAttachmentState({
    this.routeTableId,
    this.status,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routeTableId': ?routeTableId,
      'status': ?status,
      'vswitchId': ?vswitchId,
    };
  }

  factory RouteTableAttachmentState.fromMap(Map<String, dynamic> map) {
    return RouteTableAttachmentState(
      routeTableId: (() { final guardedValue = map['routeTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

