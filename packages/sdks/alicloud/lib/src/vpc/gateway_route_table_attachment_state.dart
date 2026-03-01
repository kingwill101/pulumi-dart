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
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? ipv4GatewayId,
    pulumi.Output<String>? routeTableId,
    pulumi.Output<String>? status,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      ipv4GatewayId = pulumi.Input.asOptionalInput<String>(ipv4GatewayId),
      routeTableId = pulumi.Input.asOptionalInput<String>(routeTableId),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      ipv4GatewayId: map['ipv4GatewayId'] == null ? null : pulumi.Output.create<String>(map['ipv4GatewayId'] as String),
      routeTableId: map['routeTableId'] == null ? null : pulumi.Output.create<String>(map['routeTableId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

