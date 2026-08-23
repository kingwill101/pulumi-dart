// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anomaly_detector_configuration_random_cut_forest.dart';

class AnomalyDetectorConfiguration {
  /// Configuration block for the Random Cut Forest anomaly detection algorithm. See `randomCutForest` below.
  final pulumi.Input<AnomalyDetectorConfigurationRandomCutForest> randomCutForest;

  /// Creates a new [AnomalyDetectorConfiguration].
  /// [randomCutForest] Configuration block for the Random Cut Forest anomaly detection algorithm. See `randomCutForest` below.
  const AnomalyDetectorConfiguration({
    required this.randomCutForest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'randomCutForest': pulumi.Input.mapInputValue<AnomalyDetectorConfigurationRandomCutForest, Map<String, dynamic>>(randomCutForest, (value) => value.toMap()),
    };
  }

  factory AnomalyDetectorConfiguration.fromMap(Map<String, dynamic> map) {
    return AnomalyDetectorConfiguration(
      randomCutForest: pulumi.Input.fromValue(AnomalyDetectorConfigurationRandomCutForest.fromMap((map['randomCutForest']! as Map).cast<String, dynamic>())),
    );
  }
}
