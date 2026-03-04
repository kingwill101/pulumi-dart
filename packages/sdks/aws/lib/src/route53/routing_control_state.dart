// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RoutingControl resources.
class RoutingControlState {
  /// ARN of the routing control.
  final pulumi.Input<String>? arn;

  /// ARN of the cluster in which this routing control will reside.
  final pulumi.Input<String>? clusterArn;

  /// ARN of the control panel in which this routing control will reside.
  final pulumi.Input<String>? controlPanelArn;

  /// The name describing the routing control.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Status of routing control. `PENDING` when it is being created/updated, `PENDING_DELETION` when it is being deleted, and `DEPLOYED` otherwise.
  final pulumi.Input<String>? status;

  /// Creates a new [RoutingControlState].
  /// [arn] ARN of the routing control.
  /// [clusterArn] ARN of the cluster in which this routing control will reside.
  /// [controlPanelArn] ARN of the control panel in which this routing control will reside.
  /// [name] The name describing the routing control.
  /// [status] Status of routing control. `PENDING` when it is being created/updated, `PENDING_DELETION` when it is being deleted, and `DEPLOYED` otherwise.
  RoutingControlState({
    this.arn,
    this.clusterArn,
    this.controlPanelArn,
    this.name,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'clusterArn': ?clusterArn,
      'controlPanelArn': ?controlPanelArn,
      'name': ?name,
      'status': ?status,
    };
  }

  factory RoutingControlState.fromMap(Map<String, dynamic> map) {
    return RoutingControlState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterArn: (() {
        final guardedValue = map['clusterArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      controlPanelArn: (() {
        final guardedValue = map['controlPanelArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
