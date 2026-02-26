// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_ml_v1_automated_stopping_config_decay_curve_automated_stopping_config.dart';
import 'google_cloud_ml_v1_automated_stopping_config_median_automated_stopping_config.dart';

/// Configuration for Automated Early Stopping of Trials. If no implementation_config is set, automated early stopping will not be run.
class GoogleCloudMlV1AutomatedStoppingConfig {
  final GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig?
      decayCurveStoppingConfig;
  final GoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig?
      medianAutomatedStoppingConfig;

  GoogleCloudMlV1AutomatedStoppingConfig({
    this.decayCurveStoppingConfig,
    this.medianAutomatedStoppingConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final decayCurveStoppingConfigValue = decayCurveStoppingConfig;
    if (decayCurveStoppingConfigValue != null) {
      map['decayCurveStoppingConfig'] = decayCurveStoppingConfigValue.toMap();
    }
    final medianAutomatedStoppingConfigValue = medianAutomatedStoppingConfig;
    if (medianAutomatedStoppingConfigValue != null) {
      map['medianAutomatedStoppingConfig'] =
          medianAutomatedStoppingConfigValue.toMap();
    }
    return map;
  }

  factory GoogleCloudMlV1AutomatedStoppingConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudMlV1AutomatedStoppingConfig(
      decayCurveStoppingConfig: map['decayCurveStoppingConfig'] == null
          ? null
          : GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig
              .fromMap((map['decayCurveStoppingConfig'] as Map)
                  .cast<String, dynamic>()),
      medianAutomatedStoppingConfig: map['medianAutomatedStoppingConfig'] ==
              null
          ? null
          : GoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig
              .fromMap((map['medianAutomatedStoppingConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
