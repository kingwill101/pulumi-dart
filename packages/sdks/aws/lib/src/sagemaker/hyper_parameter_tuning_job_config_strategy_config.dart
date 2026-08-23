// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_parameter_tuning_job_config_strategy_config_hyperband_strategy_config.dart';

class HyperParameterTuningJobConfigStrategyConfig {
  /// Hyperband strategy settings. See `hyperbandStrategyConfig`.
  final pulumi.Input<HyperParameterTuningJobConfigStrategyConfigHyperbandStrategyConfig>? hyperbandStrategyConfig;

  /// Creates a new [HyperParameterTuningJobConfigStrategyConfig].
  /// [hyperbandStrategyConfig] Hyperband strategy settings. See `hyperbandStrategyConfig`.
  const HyperParameterTuningJobConfigStrategyConfig({
    this.hyperbandStrategyConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hyperbandStrategyConfig': ?pulumi.Input.mapOptionalInputValue<HyperParameterTuningJobConfigStrategyConfigHyperbandStrategyConfig, Map<String, dynamic>>(hyperbandStrategyConfig, (value) => value.toMap()),
    };
  }

  factory HyperParameterTuningJobConfigStrategyConfig.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobConfigStrategyConfig(
      hyperbandStrategyConfig: (() { final guardedValue = map['hyperbandStrategyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperParameterTuningJobConfigStrategyConfigHyperbandStrategyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
