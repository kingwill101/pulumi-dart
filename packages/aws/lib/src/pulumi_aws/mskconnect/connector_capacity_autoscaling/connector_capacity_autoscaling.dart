// ignore_for_file: unused_element, unnecessary_cast

import '../connector_capacity_autoscaling_scale_in_policy/connector_capacity_autoscaling_scale_in_policy.dart';
import '../connector_capacity_autoscaling_scale_out_policy/connector_capacity_autoscaling_scale_out_policy.dart';

class ConnectorCapacityAutoscaling {
  /// The maximum number of workers allocated to the connector.
  final int maxWorkerCount;

  /// The number of microcontroller units (MCUs) allocated to each connector worker. Valid values: <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>, <span pulumi-lang-nodejs="`2`" pulumi-lang-dotnet="`2`" pulumi-lang-go="`2`" pulumi-lang-python="`2`" pulumi-lang-yaml="`2`" pulumi-lang-java="`2`">`2`</span>, <span pulumi-lang-nodejs="`4`" pulumi-lang-dotnet="`4`" pulumi-lang-go="`4`" pulumi-lang-python="`4`" pulumi-lang-yaml="`4`" pulumi-lang-java="`4`">`4`</span>, <span pulumi-lang-nodejs="`8`" pulumi-lang-dotnet="`8`" pulumi-lang-go="`8`" pulumi-lang-python="`8`" pulumi-lang-yaml="`8`" pulumi-lang-java="`8`">`8`</span>. The default value is <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>.
  final int? mcuCount;

  /// The minimum number of workers allocated to the connector.
  final int minWorkerCount;

  /// The scale-in policy for the connector. See <span pulumi-lang-nodejs="`scaleInPolicy`" pulumi-lang-dotnet="`ScaleInPolicy`" pulumi-lang-go="`scaleInPolicy`" pulumi-lang-python="`scale_in_policy`" pulumi-lang-yaml="`scaleInPolicy`" pulumi-lang-java="`scaleInPolicy`">`scale_in_policy`</span> Block for details.
  final ConnectorCapacityAutoscalingScaleInPolicy? scaleInPolicy;

  /// The scale-out policy for the connector. See <span pulumi-lang-nodejs="`scaleOutPolicy`" pulumi-lang-dotnet="`ScaleOutPolicy`" pulumi-lang-go="`scaleOutPolicy`" pulumi-lang-python="`scale_out_policy`" pulumi-lang-yaml="`scaleOutPolicy`" pulumi-lang-java="`scaleOutPolicy`">`scale_out_policy`</span> Block for details.
  final ConnectorCapacityAutoscalingScaleOutPolicy? scaleOutPolicy;

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
