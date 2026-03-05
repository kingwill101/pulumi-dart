// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GatewayRouteTableAttachment resources.
class GatewayRouteTableAttachmentState {
  /// The creation time of the resource.
  final pulumi.Input<String>? createTime;
  /// Specifies whether to only precheck this request. Default value: `false`.
  final pulumi.Input<bool>? dryRun;
  /// The ID of the IPv4 Gateway instance.
  final pulumi.Input<String>? ipv4GatewayId;
  /// The ID of the Gateway route table to be bound.
  final pulumi.Input<String>? routeTableId;
  /// The status of the IPv4 Gateway instance. Value:
  /// - **Creating**: The function is being created.
  /// - **Created**: Created and available.
  /// - **Modifying**: is being modified.
  /// - **Deleting**: Deleting.
  /// - **Deleted**: Deleted.
  /// - **Activating**: enabled.
  final pulumi.Input<String>? status;

  /// Creates a new [GatewayRouteTableAttachmentState].
  /// [createTime] The creation time of the resource.
  /// [dryRun] Specifies whether to only precheck this request. Default value: `false`.
  /// [ipv4GatewayId] The ID of the IPv4 Gateway instance.
  /// [routeTableId] The ID of the Gateway route table to be bound.
  /// [status] The status of the IPv4 Gateway instance. Value:
  GatewayRouteTableAttachmentState({
    this.createTime,
    this.dryRun,
    this.ipv4GatewayId,
    this.routeTableId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dryRun': ?dryRun,
      'ipv4GatewayId': ?ipv4GatewayId,
      'routeTableId': ?routeTableId,
      'status': ?status,
    };
  }

  factory GatewayRouteTableAttachmentState.fromMap(Map<String, dynamic> map) {
    return GatewayRouteTableAttachmentState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipv4GatewayId: (() { final guardedValue = map['ipv4GatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeTableId: (() { final guardedValue = map['routeTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

