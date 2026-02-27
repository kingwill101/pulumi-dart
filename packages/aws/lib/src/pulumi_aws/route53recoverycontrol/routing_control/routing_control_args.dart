// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RoutingControl.
class RoutingControlArgs {
  /// ARN of the cluster in which this routing control will reside.
  final pulumi.Input<String> clusterArn;

  /// ARN of the control panel in which this routing control will reside.
  final pulumi.Input<String>? controlPanelArn;

  /// The name describing the routing control.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  RoutingControlArgs({
    required this.clusterArn,
    this.controlPanelArn,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterArn'] = clusterArn;
    final controlPanelArnValue = controlPanelArn;
    if (controlPanelArnValue != null) {
      map['controlPanelArn'] = controlPanelArnValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory RoutingControlArgs.fromMap(Map<String, dynamic> map) {
    return RoutingControlArgs(
      clusterArn: pulumi.Input.asInput<String>(map['clusterArn']),
      controlPanelArn:
          pulumi.Input.asOptionalInput<String>(map['controlPanelArn']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
    );
  }
}
