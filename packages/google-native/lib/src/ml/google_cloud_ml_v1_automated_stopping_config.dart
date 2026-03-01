// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_ml_v1_automated_stopping_config_decay_curve_automated_stopping_config.dart';
import 'google_cloud_ml_v1_automated_stopping_config_median_automated_stopping_config.dart';

/// Configuration for Automated Early Stopping of Trials. If no implementation_config is set, automated early stopping will not be run.
class GoogleCloudMlV1AutomatedStoppingConfig {
  final GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig?
  decayCurveStoppingConfig;
  final GoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig?
  medianAutomatedStoppingConfig;

  /// Creates a new [GoogleCloudMlV1AutomatedStoppingConfig].
  /// [decayCurveStoppingConfig] Optional.
  /// [medianAutomatedStoppingConfig] Optional.
  GoogleCloudMlV1AutomatedStoppingConfig({
    this.decayCurveStoppingConfig,
    this.medianAutomatedStoppingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'decayCurveStoppingConfig': ?decayCurveStoppingConfig == null
          ? null
          : decayCurveStoppingConfig!.toMap(),
      'medianAutomatedStoppingConfig': ?medianAutomatedStoppingConfig == null
          ? null
          : medianAutomatedStoppingConfig!.toMap(),
    };
  }

  factory GoogleCloudMlV1AutomatedStoppingConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudMlV1AutomatedStoppingConfig(
      decayCurveStoppingConfig: map['decayCurveStoppingConfig'] == null
          ? null
          : GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig.fromMap(
              (map['decayCurveStoppingConfig'] as Map).cast<String, dynamic>(),
            ),
      medianAutomatedStoppingConfig:
          map['medianAutomatedStoppingConfig'] == null
          ? null
          : GoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig.fromMap(
              (map['medianAutomatedStoppingConfig'] as Map)
                  .cast<String, dynamic>(),
            ),
    );
  }
}
