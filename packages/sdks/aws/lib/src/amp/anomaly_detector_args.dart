// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anomaly_detector_configuration.dart';
import 'anomaly_detector_missing_data_action.dart';
import 'anomaly_detector_timeouts.dart';

/// {@template pulumi_amp_anomaly_detector_anomaly_detector_args_doc}
/// The set of arguments for AnomalyDetector.
/// {@endtemplate}
/// {@macro pulumi_amp_anomaly_detector_anomaly_detector_args_doc}
class AnomalyDetectorArgs {
  /// Name of the anomaly detector.
  final pulumi.Input<String> alias;
  /// Configuration block for the anomaly detector algorithm. See `configuration` below.
  final pulumi.Input<AnomalyDetectorConfiguration> configuration;
  /// Interval in seconds at which the anomaly detector evaluates data.
  final pulumi.Input<int>? evaluationIntervalInSeconds;
  /// Map of label key-value pairs used to scope the anomaly detector to specific time series.
  final pulumi.Input<Map<String, String>>? labels;
  /// Configuration block for the action to take when data is missing. See `missingDataAction` below.
  final pulumi.Input<AnomalyDetectorMissingDataAction> missingDataAction;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<AnomalyDetectorTimeouts>? timeouts;
  /// ID of the AMP workspace in which to create the anomaly detector.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> workspaceId;

  /// Creates a new [AnomalyDetectorArgs].
  /// [alias] Name of the anomaly detector.
  /// [configuration] Configuration block for the anomaly detector algorithm. See `configuration` below.
  /// [evaluationIntervalInSeconds] Interval in seconds at which the anomaly detector evaluates data.
  /// [labels] Map of label key-value pairs used to scope the anomaly detector to specific time series.
  /// [missingDataAction] Configuration block for the action to take when data is missing. See `missingDataAction` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [workspaceId] ID of the AMP workspace in which to create the anomaly detector.
  const AnomalyDetectorArgs({
    required this.alias,
    required this.configuration,
    this.evaluationIntervalInSeconds,
    this.labels,
    required this.missingDataAction,
    this.region,
    this.tags,
    this.timeouts,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'configuration': pulumi.Input.mapInputValue<AnomalyDetectorConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'evaluationIntervalInSeconds': ?evaluationIntervalInSeconds,
      'labels': ?labels,
      'missingDataAction': pulumi.Input.mapInputValue<AnomalyDetectorMissingDataAction, Map<String, dynamic>>(missingDataAction, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AnomalyDetectorTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'workspaceId': workspaceId,
    };
  }

  factory AnomalyDetectorArgs.fromMap(Map<String, dynamic> map) {
    return AnomalyDetectorArgs(
      alias: pulumi.Input.fromValue(map['alias'] as String),
      configuration: pulumi.Input.fromValue(AnomalyDetectorConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())),
      evaluationIntervalInSeconds: (() { final guardedValue = map['evaluationIntervalInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      missingDataAction: pulumi.Input.fromValue(AnomalyDetectorMissingDataAction.fromMap((map['missingDataAction']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnomalyDetectorTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
