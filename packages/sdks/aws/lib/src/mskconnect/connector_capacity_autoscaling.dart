// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_capacity_autoscaling_scale_in_policy.dart';
import 'connector_capacity_autoscaling_scale_out_policy.dart';

class ConnectorCapacityAutoscaling {
  /// The maximum number of workers allocated to the connector.
  final pulumi.Input<int> maxWorkerCount;
  /// The number of microcontroller units (MCUs) allocated to each connector worker. Valid values: `1`, `2`, `4`, `8`. The default value is `1`.
  final pulumi.Input<int>? mcuCount;
  /// The minimum number of workers allocated to the connector.
  final pulumi.Input<int> minWorkerCount;
  /// The scale-in policy for the connector. See `scale_in_policy` Block for details.
  final pulumi.Input<ConnectorCapacityAutoscalingScaleInPolicy>? scaleInPolicy;
  /// The scale-out policy for the connector. See `scale_out_policy` Block for details.
  final pulumi.Input<ConnectorCapacityAutoscalingScaleOutPolicy>? scaleOutPolicy;

  /// Creates a new [ConnectorCapacityAutoscaling].
  /// [maxWorkerCount] The maximum number of workers allocated to the connector.
  /// [mcuCount] The number of microcontroller units (MCUs) allocated to each connector worker. Valid values: `1`, `2`, `4`, `8`. The default value is `1`.
  /// [minWorkerCount] The minimum number of workers allocated to the connector.
  /// [scaleInPolicy] The scale-in policy for the connector. See `scale_in_policy` Block for details.
  /// [scaleOutPolicy] The scale-out policy for the connector. See `scale_out_policy` Block for details.
  ConnectorCapacityAutoscaling({
    required this.maxWorkerCount,
    this.mcuCount,
    required this.minWorkerCount,
    this.scaleInPolicy,
    this.scaleOutPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxWorkerCount': maxWorkerCount,
      'mcuCount': ?mcuCount,
      'minWorkerCount': minWorkerCount,
      'scaleInPolicy': ?pulumi.Input.mapOptionalInputValue<ConnectorCapacityAutoscalingScaleInPolicy, Map<String, dynamic>>(scaleInPolicy, (value) => value.toMap()),
      'scaleOutPolicy': ?pulumi.Input.mapOptionalInputValue<ConnectorCapacityAutoscalingScaleOutPolicy, Map<String, dynamic>>(scaleOutPolicy, (value) => value.toMap()),
    };
  }

  factory ConnectorCapacityAutoscaling.fromMap(Map<String, dynamic> map) {
    return ConnectorCapacityAutoscaling(
      maxWorkerCount: pulumi.Input.fromValue(map['maxWorkerCount'] as int),
      mcuCount: (() { final guardedValue = map['mcuCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minWorkerCount: pulumi.Input.fromValue(map['minWorkerCount'] as int),
      scaleInPolicy: (() { final guardedValue = map['scaleInPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorCapacityAutoscalingScaleInPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scaleOutPolicy: (() { final guardedValue = map['scaleOutPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorCapacityAutoscalingScaleOutPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

