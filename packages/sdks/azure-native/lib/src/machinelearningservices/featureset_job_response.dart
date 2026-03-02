// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_window_response.dart';

/// Dto object representing the feature set job
class FeaturesetJobResponse {
  /// Specifies the created date
  final pulumi.Input<String>? createdDate;
  /// Specifies the display name
  final pulumi.Input<String>? displayName;
  /// Specifies the duration
  final pulumi.Input<String>? duration;
  /// Specifies the experiment id
  final pulumi.Input<String>? experimentId;
  /// Specifies the backfill feature window to be materialized
  final pulumi.Input<FeatureWindowResponse>? featureWindow;
  /// Specifies the job id
  final pulumi.Input<String>? jobId;
  /// Specifies the job status
  final pulumi.Input<String>? status;
  /// Specifies the tags if any
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the feature store job type
  final pulumi.Input<String>? type;

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
    this.status,
    this.tags,
    this.type,
  });

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
      createdDate: map['createdDate'] == null ? null : (map['createdDate']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      duration: map['duration'] == null ? null : (map['duration']! as String).input(),
      experimentId: map['experimentId'] == null ? null : (map['experimentId']! as String).input(),
      featureWindow: map['featureWindow'] == null ? null : (FeatureWindowResponse.fromMap((map['featureWindow']! as Map).cast<String, dynamic>())).input(),
      jobId: map['jobId'] == null ? null : (map['jobId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

