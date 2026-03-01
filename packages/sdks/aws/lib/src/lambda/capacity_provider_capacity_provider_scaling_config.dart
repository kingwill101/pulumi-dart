// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_provider_capacity_provider_scaling_config_scaling_policy.dart';

class CapacityProviderCapacityProviderScalingConfig {
  /// The maximum number of VCPUs for the Capacity Provider.
  final int maxVcpuCount;
  /// The scaling mode for the Capacity Provider. Valid values are `"Auto"` and `"Manual"`. Defaults to `"Auto"`.
  final String scalingMode;
  /// List of scaling policies. Only required if `scaling_mode` is set to `"Manual"`. See Scaling Policies below.
  final List<CapacityProviderCapacityProviderScalingConfigScalingPolicy> scalingPolicies;

  /// Creates a new [CapacityProviderCapacityProviderScalingConfig].
  /// [maxVcpuCount] The maximum number of VCPUs for the Capacity Provider.
  /// [scalingMode] The scaling mode for the Capacity Provider. Valid values are `"Auto"` and `"Manual"`. Defaults to `"Auto"`.
  /// [scalingPolicies] List of scaling policies. Only required if `scaling_mode` is set to `"Manual"`. See Scaling Policies below.
  CapacityProviderCapacityProviderScalingConfig({
    required this.maxVcpuCount,
    required this.scalingMode,
    required this.scalingPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxVcpuCount': maxVcpuCount,
      'scalingMode': scalingMode,
      'scalingPolicies': pulumi.Input.encodeList<CapacityProviderCapacityProviderScalingConfigScalingPolicy, Map<String, dynamic>>(scalingPolicies, (value) => value.toMap()),
    };
  }

  factory CapacityProviderCapacityProviderScalingConfig.fromMap(Map<String, dynamic> map) {
    return CapacityProviderCapacityProviderScalingConfig(
      maxVcpuCount: map['maxVcpuCount'] as int,
      scalingMode: map['scalingMode'] as String,
      scalingPolicies: pulumi.Input.decodeList<CapacityProviderCapacityProviderScalingConfigScalingPolicy>(map['scalingPolicies'], (value) => CapacityProviderCapacityProviderScalingConfigScalingPolicy.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

