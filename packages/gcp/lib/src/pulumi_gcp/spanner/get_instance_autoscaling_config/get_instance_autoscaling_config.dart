// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_autoscaling_config_asymmetric_autoscaling_option/get_instance_autoscaling_config_asymmetric_autoscaling_option.dart';
import '../get_instance_autoscaling_config_autoscaling_limit/get_instance_autoscaling_config_autoscaling_limit.dart';
import '../get_instance_autoscaling_config_autoscaling_target/get_instance_autoscaling_config_autoscaling_target.dart';

class GetInstanceAutoscalingConfig {
  /// Asymmetric autoscaling options for specific replicas.
  final List<GetInstanceAutoscalingConfigAsymmetricAutoscalingOption>
      asymmetricAutoscalingOptions;

  /// Defines scale in controls to reduce the risk of response latency
  /// and outages due to abrupt scale-in events. Users can define the minimum and
  /// maximum compute capacity allocated to the instance, and the autoscaler will
  /// only scale within that range. Users can either use nodes or processing
  /// units to specify the limits, but should use the same unit to set both the<span pulumi-lang-nodejs="
  /// minLimit " pulumi-lang-dotnet="
  /// MinLimit " pulumi-lang-go="
  /// minLimit " pulumi-lang-python="
  /// min_limit " pulumi-lang-yaml="
  /// minLimit " pulumi-lang-java="
  /// minLimit ">
  /// min_limit </span>and max_limit.
  final List<GetInstanceAutoscalingConfigAutoscalingLimit> autoscalingLimits;

  /// Defines scale in controls to reduce the risk of response latency
  /// and outages due to abrupt scale-in events
  final List<GetInstanceAutoscalingConfigAutoscalingTarget> autoscalingTargets;

  GetInstanceAutoscalingConfig({
    required this.asymmetricAutoscalingOptions,
    required this.autoscalingLimits,
    required this.autoscalingTargets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['asymmetricAutoscalingOptions'] = Input.encodeList<
            GetInstanceAutoscalingConfigAsymmetricAutoscalingOption,
            Map<String, dynamic>>(
        asymmetricAutoscalingOptions, (value) => value.toMap());
    map['autoscalingLimits'] = Input.encodeList<
        GetInstanceAutoscalingConfigAutoscalingLimit,
        Map<String, dynamic>>(autoscalingLimits, (value) => value.toMap());
    map['autoscalingTargets'] = Input.encodeList<
        GetInstanceAutoscalingConfigAutoscalingTarget,
        Map<String, dynamic>>(autoscalingTargets, (value) => value.toMap());
    return map;
  }

  factory GetInstanceAutoscalingConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceAutoscalingConfig(
      asymmetricAutoscalingOptions: Input.decodeList<
              GetInstanceAutoscalingConfigAsymmetricAutoscalingOption>(
          map['asymmetricAutoscalingOptions'],
          (value) =>
              GetInstanceAutoscalingConfigAsymmetricAutoscalingOption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      autoscalingLimits:
          Input.decodeList<GetInstanceAutoscalingConfigAutoscalingLimit>(
              map['autoscalingLimits'],
              (value) => GetInstanceAutoscalingConfigAutoscalingLimit.fromMap(
                  (value as Map).cast<String, dynamic>())),
      autoscalingTargets:
          Input.decodeList<GetInstanceAutoscalingConfigAutoscalingTarget>(
              map['autoscalingTargets'],
              (value) => GetInstanceAutoscalingConfigAutoscalingTarget.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
