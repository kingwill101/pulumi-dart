// ignore_for_file: unused_element, unnecessary_cast

import 'connector_capacity_autoscaling_scale_in_policy.dart';
import 'connector_capacity_autoscaling_scale_out_policy.dart';

class ConnectorCapacityAutoscaling {
  /// The maximum number of workers allocated to the connector.
  final int maxWorkerCount;

  /// The number of microcontroller units (MCUs) allocated to each connector worker. Valid values: `1`, `2`, `4`, `8`. The default value is `1`.
  final int? mcuCount;

  /// The minimum number of workers allocated to the connector.
  final int minWorkerCount;

  /// The scale-in policy for the connector. See `scale_in_policy` Block for details.
  final ConnectorCapacityAutoscalingScaleInPolicy? scaleInPolicy;

  /// The scale-out policy for the connector. See `scale_out_policy` Block for details.
  final ConnectorCapacityAutoscalingScaleOutPolicy? scaleOutPolicy;

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
    final map = <String, dynamic>{};
    map['maxWorkerCount'] = maxWorkerCount;
    final mcuCountValue = mcuCount;
    if (mcuCountValue != null) {
      map['mcuCount'] = mcuCountValue;
    }
    map['minWorkerCount'] = minWorkerCount;
    final scaleInPolicyValue = scaleInPolicy;
    if (scaleInPolicyValue != null) {
      map['scaleInPolicy'] = scaleInPolicyValue.toMap();
    }
    final scaleOutPolicyValue = scaleOutPolicy;
    if (scaleOutPolicyValue != null) {
      map['scaleOutPolicy'] = scaleOutPolicyValue.toMap();
    }
    return map;
  }

  factory ConnectorCapacityAutoscaling.fromMap(Map<String, dynamic> map) {
    return ConnectorCapacityAutoscaling(
      maxWorkerCount: map['maxWorkerCount'] as int,
      mcuCount: map['mcuCount'] == null ? null : map['mcuCount'] as int,
      minWorkerCount: map['minWorkerCount'] as int,
      scaleInPolicy: map['scaleInPolicy'] == null
          ? null
          : ConnectorCapacityAutoscalingScaleInPolicy.fromMap(
              (map['scaleInPolicy'] as Map).cast<String, dynamic>()),
      scaleOutPolicy: map['scaleOutPolicy'] == null
          ? null
          : ConnectorCapacityAutoscalingScaleOutPolicy.fromMap(
              (map['scaleOutPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}
