// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_feature_spec_fleetobservability_logging_config/get_feature_spec_fleetobservability_logging_config.dart';

class GetFeatureSpecFleetobservability {
  /// Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  final List<GetFeatureSpecFleetobservabilityLoggingConfig> loggingConfigs;

  GetFeatureSpecFleetobservability({
    required this.loggingConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['loggingConfigs'] = Input.encodeList<
        GetFeatureSpecFleetobservabilityLoggingConfig,
        Map<String, dynamic>>(loggingConfigs, (value) => value.toMap());
    return map;
  }

  factory GetFeatureSpecFleetobservability.fromMap(Map<String, dynamic> map) {
    return GetFeatureSpecFleetobservability(
      loggingConfigs:
          Input.decodeList<GetFeatureSpecFleetobservabilityLoggingConfig>(
              map['loggingConfigs'],
              (value) => GetFeatureSpecFleetobservabilityLoggingConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
