// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_metastore_service_scaling_config_autoscaling_config_limit_config/get_metastore_service_scaling_config_autoscaling_config_limit_config.dart';

class GetMetastoreServiceScalingConfigAutoscalingConfig {
  /// Defines whether autoscaling is enabled. The default value is false.
  final bool autoscalingEnabled;

  /// Output only. The scaling factor of a service with autoscaling enabled.
  final double autoscalingFactor;

  /// Represents the limit configuration of a metastore service.
  final List<GetMetastoreServiceScalingConfigAutoscalingConfigLimitConfig>
      limitConfigs;

  GetMetastoreServiceScalingConfigAutoscalingConfig({
    required this.autoscalingEnabled,
    required this.autoscalingFactor,
    required this.limitConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingEnabled'] = autoscalingEnabled;
    map['autoscalingFactor'] = autoscalingFactor;
    map['limitConfigs'] = Input.encodeList<
        GetMetastoreServiceScalingConfigAutoscalingConfigLimitConfig,
        Map<String, dynamic>>(limitConfigs, (value) => value.toMap());
    return map;
  }

  factory GetMetastoreServiceScalingConfigAutoscalingConfig.fromMap(
      Map<String, dynamic> map) {
    return GetMetastoreServiceScalingConfigAutoscalingConfig(
      autoscalingEnabled: map['autoscalingEnabled'] as bool,
      autoscalingFactor: map['autoscalingFactor'] as double,
      limitConfigs: Input.decodeList<
              GetMetastoreServiceScalingConfigAutoscalingConfigLimitConfig>(
          map['limitConfigs'],
          (value) =>
              GetMetastoreServiceScalingConfigAutoscalingConfigLimitConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
