// ignore_for_file: unused_element, unnecessary_cast

import 'feature_window_response.dart';

/// Dto object representing the feature set job
class FeaturesetJobResponse {
  /// Specifies the created date
  final String? createdDate;
  /// Specifies the display name
  final String? displayName;
  /// Specifies the duration
  final String? duration;
  /// Specifies the experiment id
  final String? experimentId;
  /// Specifies the backfill feature window to be materialized
  final FeatureWindowResponse? featureWindow;
  /// Specifies the job id
  final String? jobId;
  /// Specifies the job status
  final String? status;
  /// Specifies the tags if any
  final Map<String, String>? tags;
  /// Specifies the feature store job type
  final String? type;

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
      'featureWindow': ?featureWindow == null ? null : featureWindow!.toMap(),
      'jobId': ?jobId,
      'status': ?status,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory FeaturesetJobResponse.fromMap(Map<String, dynamic> map) {
    return FeaturesetJobResponse(
      createdDate: map['createdDate'] == null ? null : map['createdDate'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      duration: map['duration'] == null ? null : map['duration'] as String,
      experimentId: map['experimentId'] == null ? null : map['experimentId'] as String,
      featureWindow: map['featureWindow'] == null ? null : FeatureWindowResponse.fromMap((map['featureWindow'] as Map).cast<String, dynamic>()),
      jobId: map['jobId'] == null ? null : map['jobId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

