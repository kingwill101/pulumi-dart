// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_metastore_service_scaling_config_autoscaling_config.dart';

class GetMetastoreServiceScalingConfig {
  /// Represents the autoscaling configuration of a metastore service.
  final List<GetMetastoreServiceScalingConfigAutoscalingConfig> autoscalingConfigs;
  /// Metastore instance sizes. Possible values: ["EXTRA_SMALL", "SMALL", "MEDIUM", "LARGE", "EXTRA_LARGE"]
  final String instanceSize;
  /// Scaling factor, in increments of 0.1 for values less than 1.0, and increments of 1.0 for values greater than 1.0.
  final double scalingFactor;

  /// Creates a new [GetMetastoreServiceScalingConfig].
  /// [autoscalingConfigs] Represents the autoscaling configuration of a metastore service.
  /// [instanceSize] Metastore instance sizes. Possible values: ["EXTRA_SMALL", "SMALL", "MEDIUM", "LARGE", "EXTRA_LARGE"]
  /// [scalingFactor] Scaling factor, in increments of 0.1 for values less than 1.0, and increments of 1.0 for values greater than 1.0.
  GetMetastoreServiceScalingConfig({
    required this.autoscalingConfigs,
    required this.instanceSize,
    required this.scalingFactor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingConfigs': pulumi.Input.encodeList<GetMetastoreServiceScalingConfigAutoscalingConfig, Map<String, dynamic>>(autoscalingConfigs, (value) => value.toMap()),
      'instanceSize': instanceSize,
      'scalingFactor': scalingFactor,
    };
  }

  factory GetMetastoreServiceScalingConfig.fromMap(Map<String, dynamic> map) {
    return GetMetastoreServiceScalingConfig(
      autoscalingConfigs: pulumi.Input.decodeList<GetMetastoreServiceScalingConfigAutoscalingConfig>(map['autoscalingConfigs'], (value) => GetMetastoreServiceScalingConfigAutoscalingConfig.fromMap((value as Map).cast<String, dynamic>())),
      instanceSize: map['instanceSize'] as String,
      scalingFactor: map['scalingFactor'] as double,
    );
  }
}

