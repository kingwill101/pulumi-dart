// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_recovery_control_routing_control_routing_control_args_doc}
/// The set of arguments for RoutingControl.
/// {@endtemplate}
/// {@macro pulumi_route53_recovery_control_routing_control_routing_control_args_doc}
class RoutingControlArgs {
  /// ARN of the cluster in which this routing control will reside.
  final pulumi.Input<String> clusterArn;
  /// ARN of the control panel in which this routing control will reside.
  final pulumi.Input<String>? controlPanelArn;
  /// The name describing the routing control.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Creates a new [RoutingControlArgs].
  /// [clusterArn] ARN of the cluster in which this routing control will reside.
  /// [controlPanelArn] ARN of the control panel in which this routing control will reside.
  /// [name] The name describing the routing control.
  RoutingControlArgs({
    required String clusterArn,
    String? controlPanelArn,
    String? name,
  }) :
      clusterArn = pulumi.Input.asInput<String>(clusterArn),
      controlPanelArn = pulumi.Input.asOptionalInput<String>(controlPanelArn),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterArn': clusterArn,
      'controlPanelArn': ?controlPanelArn,
      'name': ?name,
    };
  }

  factory RoutingControlArgs.fromMap(Map<String, dynamic> map) {
    return RoutingControlArgs(
      clusterArn: map['clusterArn'] as String,
      controlPanelArn: map['controlPanelArn'] == null ? null : map['controlPanelArn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

