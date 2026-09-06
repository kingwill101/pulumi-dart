// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_window_response.dart';

/// Dto object representing the feature set job
class FeaturesetJobResponse {
  /// Specifies the created date
  final pulumi.Input<String?>? createdDate;
  /// Specifies the display name
  final pulumi.Input<String?>? displayName;
  /// Specifies the duration
  final pulumi.Input<String?>? duration;
  /// Specifies the experiment id
  final pulumi.Input<String?>? experimentId;
  /// Specifies the backfill feature window to be materialized
  final pulumi.Input<FeatureWindowResponse?>? featureWindow;
  /// Specifies the job id
  final pulumi.Input<String?>? jobId;
  /// Specifies the job status
  final pulumi.Input<String?>? status;
  /// Specifies the tags if any
  final pulumi.Input<Map<String, String>?>? tags;
  /// Specifies the feature store job type
  final pulumi.Input<String?>? type;

  /// Creates a new [FeaturesetJobResponse].
  /// [createdDate] Specifies the created date
  /// [displayName] Specifies the display name
  /// [duration] Specifies the duration
  /// [experimentId] Specifies the experiment id
  /// [featureWindow] Specifies the backfill feature window to be materialized
  /// [jobId] Specifies the job id
  /// [status] Specifies the job status
  /// [tags] Specifies the tags if any
  /// [type] Specifies the feature store job type
  FeaturesetJobResponse({
    this.createdDate,
    this.displayName,
    this.duration,
    this.experimentId,
    this.featureWindow,
    this.jobId,
    pulumi.Input<String?>? status,
    this.tags,
    pulumi.Input<String?>? type,
  }) : status = status ?? pulumi.Input.fromValue('Unknown'), type = type ?? pulumi.Input.fromValue('RecurrentMaterialization');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdDate': ?createdDate,
      'displayName': ?displayName,
      'duration': ?duration,
      'experimentId': ?experimentId,
      'featureWindow': ?pulumi.Input.mapOptionalInputValue<FeatureWindowResponse, Map<String, dynamic>>(featureWindow, (value) => value.toMap()),
      'jobId': ?jobId,
      'status': ?status,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory FeaturesetJobResponse.fromMap(Map<String, dynamic> map) {
    return FeaturesetJobResponse(
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      experimentId: (() { final guardedValue = map['experimentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      featureWindow: (() { final guardedValue = map['featureWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureWindowResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jobId: (() { final guardedValue = map['jobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
