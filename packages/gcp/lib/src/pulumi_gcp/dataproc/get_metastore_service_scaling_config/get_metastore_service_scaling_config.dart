// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_metastore_service_scaling_config_autoscaling_config/get_metastore_service_scaling_config_autoscaling_config.dart';

class GetMetastoreServiceScalingConfig {
  /// Represents the autoscaling configuration of a metastore service.
  final List<GetMetastoreServiceScalingConfigAutoscalingConfig>
      autoscalingConfigs;

  /// Metastore instance sizes. Possible values: ["EXTRA_SMALL", "SMALL", "MEDIUM", "LARGE", "EXTRA_LARGE"]
  final String instanceSize;

  /// Scaling factor, in increments of 0.1 for values less than 1.0, and increments of 1.0 for values greater than 1.0.
  final double scalingFactor;

  GetMetastoreServiceScalingConfig({
    required this.autoscalingConfigs,
    required this.instanceSize,
    required this.scalingFactor,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingConfigs'] = Input.encodeList<
        GetMetastoreServiceScalingConfigAutoscalingConfig,
        Map<String, dynamic>>(autoscalingConfigs, (value) => value.toMap());
    map['instanceSize'] = instanceSize;
    map['scalingFactor'] = scalingFactor;
    return map;
  }

  factory GetMetastoreServiceScalingConfig.fromMap(Map<String, dynamic> map) {
    return GetMetastoreServiceScalingConfig(
      autoscalingConfigs:
          Input.decodeList<GetMetastoreServiceScalingConfigAutoscalingConfig>(
              map['autoscalingConfigs'],
              (value) =>
                  GetMetastoreServiceScalingConfigAutoscalingConfig.fromMap(
                      (value as Map).cast<String, dynamic>())),
      instanceSize: map['instanceSize'] as String,
      scalingFactor: map['scalingFactor'] as double,
    );
  }
}
