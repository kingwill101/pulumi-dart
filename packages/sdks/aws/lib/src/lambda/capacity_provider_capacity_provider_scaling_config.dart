// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_provider_capacity_provider_scaling_config_scaling_policy.dart';

class CapacityProviderCapacityProviderScalingConfig {
  /// Maximum number of VCPUs for the Capacity Provider.
  final pulumi.Input<int> maxVcpuCount;
  /// Scaling mode for the Capacity Provider. Valid values are `"Auto"` and `"Manual"`. Defaults to `"Auto"`.
  final pulumi.Input<String> scalingMode;
  /// List of scaling policies. Only required if `scalingMode` is set to `"Manual"`. See Scaling Policies below.
  final pulumi.Input<List<CapacityProviderCapacityProviderScalingConfigScalingPolicy>> scalingPolicies;

  /// Creates a new [CapacityProviderCapacityProviderScalingConfig].
  /// [maxVcpuCount] Maximum number of VCPUs for the Capacity Provider.
  /// [scalingMode] Scaling mode for the Capacity Provider. Valid values are `"Auto"` and `"Manual"`. Defaults to `"Auto"`.
  /// [scalingPolicies] List of scaling policies. Only required if `scalingMode` is set to `"Manual"`. See Scaling Policies below.
  const CapacityProviderCapacityProviderScalingConfig({
    required this.maxVcpuCount,
    required this.scalingMode,
    required this.scalingPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxVcpuCount': maxVcpuCount,
      'scalingMode': scalingMode,
      'scalingPolicies': pulumi.Input.mapInputValue<List<CapacityProviderCapacityProviderScalingConfigScalingPolicy>, List<Map<String, dynamic>>>(scalingPolicies, (value) => pulumi.Input.encodeList<CapacityProviderCapacityProviderScalingConfigScalingPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CapacityProviderCapacityProviderScalingConfig.fromMap(Map<String, dynamic> map) {
    return CapacityProviderCapacityProviderScalingConfig(
      maxVcpuCount: pulumi.Input.fromValue((map['maxVcpuCount'] as num).toInt()),
      scalingMode: pulumi.Input.fromValue(map['scalingMode'] as String),
      scalingPolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<CapacityProviderCapacityProviderScalingConfigScalingPolicy>(map['scalingPolicies']!, (value) => CapacityProviderCapacityProviderScalingConfigScalingPolicy.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
