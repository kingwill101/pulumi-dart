// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This profile allows the customers to customize the rolling update.
class UpdateProfileRollingUpdateProfile {
  /// Default is false. If set to true, the CGs will be updated in-place instead of creating new CG and deleting old ones.
  final pulumi.Input<bool>? inPlaceUpdate;
  /// Maximum percentage of total Container Groups which can be updated simultaneously by rolling update in one batch.
  final pulumi.Input<int>? maxBatchPercent;
  /// Maximum percentage of the updated Container Groups which can be in unhealthy state after each batch is updated.
  final pulumi.Input<int>? maxUnhealthyPercent;
  /// The wait time between batches after completing the one batch of the rolling update and starting the next batch. The time duration should be specified in ISO 8601 format for duration.
  final pulumi.Input<String>? pauseTimeBetweenBatches;

  /// Creates a new [UpdateProfileRollingUpdateProfile].
  /// [inPlaceUpdate] Default is false. If set to true, the CGs will be updated in-place instead of creating new CG and deleting old ones.
  /// [maxBatchPercent] Maximum percentage of total Container Groups which can be updated simultaneously by rolling update in one batch.
  /// [maxUnhealthyPercent] Maximum percentage of the updated Container Groups which can be in unhealthy state after each batch is updated.
  /// [pauseTimeBetweenBatches] The wait time between batches after completing the one batch of the rolling update and starting the next batch. The time duration should be specified in ISO 8601 format for duration.
  UpdateProfileRollingUpdateProfile({
    this.inPlaceUpdate,
    this.maxBatchPercent,
    this.maxUnhealthyPercent,
    this.pauseTimeBetweenBatches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inPlaceUpdate': ?inPlaceUpdate,
      'maxBatchPercent': ?maxBatchPercent,
      'maxUnhealthyPercent': ?maxUnhealthyPercent,
      'pauseTimeBetweenBatches': ?pauseTimeBetweenBatches,
    };
  }

  factory UpdateProfileRollingUpdateProfile.fromMap(Map<String, dynamic> map) {
    return UpdateProfileRollingUpdateProfile(
      inPlaceUpdate: map['inPlaceUpdate'] == null ? null : (map['inPlaceUpdate']! as bool).input(),
      maxBatchPercent: map['maxBatchPercent'] == null ? null : (map['maxBatchPercent']! as int).input(),
      maxUnhealthyPercent: map['maxUnhealthyPercent'] == null ? null : (map['maxUnhealthyPercent']! as int).input(),
      pauseTimeBetweenBatches: map['pauseTimeBetweenBatches'] == null ? null : (map['pauseTimeBetweenBatches']! as String).input(),
    );
  }
}

