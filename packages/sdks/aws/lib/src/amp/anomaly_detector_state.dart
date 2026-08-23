// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anomaly_detector_configuration.dart';
import 'anomaly_detector_missing_data_action.dart';
import 'anomaly_detector_timeouts.dart';

/// Input properties used for looking up and filtering AnomalyDetector resources.
class AnomalyDetectorState {
  /// Name of the anomaly detector.
  final pulumi.Input<String>? alias;
  /// ARN of the Anomaly Detector.
  final pulumi.Input<String>? arn;
  /// Configuration block for the anomaly detector algorithm. See `configuration` below.
  final pulumi.Input<AnomalyDetectorConfiguration>? configuration;
  /// RFC3339 timestamp of when the anomaly detector was created.
  final pulumi.Input<String>? createdAt;
  /// Interval in seconds at which the anomaly detector evaluates data.
  final pulumi.Input<int>? evaluationIntervalInSeconds;
  /// Map of label key-value pairs used to scope the anomaly detector to specific time series.
  final pulumi.Input<Map<String, String>>? labels;
  /// Configuration block for the action to take when data is missing. See `missingDataAction` below.
  final pulumi.Input<AnomalyDetectorMissingDataAction>? missingDataAction;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<AnomalyDetectorTimeouts>? timeouts;
  /// ID of the AMP workspace in which to create the anomaly detector.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [AnomalyDetectorState].
  /// [alias] Name of the anomaly detector.
  /// [arn] ARN of the Anomaly Detector.
  /// [configuration] Configuration block for the anomaly detector algorithm. See `configuration` below.
  /// [createdAt] RFC3339 timestamp of when the anomaly detector was created.
  /// [evaluationIntervalInSeconds] Interval in seconds at which the anomaly detector evaluates data.
  /// [labels] Map of label key-value pairs used to scope the anomaly detector to specific time series.
  /// [missingDataAction] Configuration block for the action to take when data is missing. See `missingDataAction` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  /// [workspaceId] ID of the AMP workspace in which to create the anomaly detector.
  const AnomalyDetectorState({
    this.alias,
    this.arn,
    this.configuration,
    this.createdAt,
    this.evaluationIntervalInSeconds,
    this.labels,
    this.missingDataAction,
    this.region,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'arn': ?arn,
      'configuration': ?pulumi.Input.mapOptionalInputValue<AnomalyDetectorConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'createdAt': ?createdAt,
      'evaluationIntervalInSeconds': ?evaluationIntervalInSeconds,
      'labels': ?labels,
      'missingDataAction': ?pulumi.Input.mapOptionalInputValue<AnomalyDetectorMissingDataAction, Map<String, dynamic>>(missingDataAction, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AnomalyDetectorTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'workspaceId': ?workspaceId,
    };
  }

  factory AnomalyDetectorState.fromMap(Map<String, dynamic> map) {
    return AnomalyDetectorState(
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnomalyDetectorConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluationIntervalInSeconds: (() { final guardedValue = map['evaluationIntervalInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      missingDataAction: (() { final guardedValue = map['missingDataAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnomalyDetectorMissingDataAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnomalyDetectorTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
