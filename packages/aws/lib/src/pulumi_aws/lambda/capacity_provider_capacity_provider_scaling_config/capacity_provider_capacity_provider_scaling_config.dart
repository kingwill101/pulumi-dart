// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../capacity_provider_capacity_provider_scaling_config_scaling_policy/capacity_provider_capacity_provider_scaling_config_scaling_policy.dart';

class CapacityProviderCapacityProviderScalingConfig {
  /// The maximum number of VCPUs for the Capacity Provider.
  final int maxVcpuCount;

  /// The scaling mode for the Capacity Provider. Valid values are `"Auto"` and `"Manual"`. Defaults to `"Auto"`.
  final String scalingMode;

  /// List of scaling policies. Only required if <span pulumi-lang-nodejs="`scalingMode`" pulumi-lang-dotnet="`ScalingMode`" pulumi-lang-go="`scalingMode`" pulumi-lang-python="`scaling_mode`" pulumi-lang-yaml="`scalingMode`" pulumi-lang-java="`scalingMode`">`scaling_mode`</span> is set to `"Manual"`. See Scaling Policies below.
  final List<CapacityProviderCapacityProviderScalingConfigScalingPolicy>
      scalingPolicies;

  CapacityProviderCapacityProviderScalingConfig({
    required this.maxVcpuCount,
    required this.scalingMode,
    required this.scalingPolicies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxVcpuCount'] = maxVcpuCount;
    map['scalingMode'] = scalingMode;
    map['scalingPolicies'] = Input.encodeList<
        CapacityProviderCapacityProviderScalingConfigScalingPolicy,
        Map<String, dynamic>>(scalingPolicies, (value) => value.toMap());
    return map;
  }

  factory CapacityProviderCapacityProviderScalingConfig.fromMap(
      Map<String, dynamic> map) {
    return CapacityProviderCapacityProviderScalingConfig(
      maxVcpuCount: map['maxVcpuCount'] as int,
      scalingMode: map['scalingMode'] as String,
      scalingPolicies: Input.decodeList<
              CapacityProviderCapacityProviderScalingConfigScalingPolicy>(
          map['scalingPolicies'],
          (value) => CapacityProviderCapacityProviderScalingConfigScalingPolicy
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
