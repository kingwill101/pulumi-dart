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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? clusterArn,
    pulumi.Output<String>? controlPanelArn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? status,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      clusterArn = pulumi.Input.asOptionalInput<String>(clusterArn),
      controlPanelArn = pulumi.Input.asOptionalInput<String>(controlPanelArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      clusterArn: map['clusterArn'] == null ? null : pulumi.Output.create<String>(map['clusterArn'] as String),
      controlPanelArn: map['controlPanelArn'] == null ? null : pulumi.Output.create<String>(map['controlPanelArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

