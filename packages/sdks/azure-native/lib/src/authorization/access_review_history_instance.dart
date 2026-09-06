// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Access Review History Definition Instance.
class AccessReviewHistoryInstance {
  /// The display name for the parent history definition.
  final pulumi.Input<String?>? displayName;
  /// Date time when history data report expires and the associated data is deleted.
  final pulumi.Input<String?>? expiration;
  /// Date time when the history data report is scheduled to be generated.
  final pulumi.Input<String?>? fulfilledDateTime;
  /// Date time used when selecting review data, all reviews included in data end on or before this date. For use only with one-time/non-recurring reports.
  final pulumi.Input<String?>? reviewHistoryPeriodEndDateTime;
  /// Date time used when selecting review data, all reviews included in data start on or after this date. For use only with one-time/non-recurring reports.
  final pulumi.Input<String?>? reviewHistoryPeriodStartDateTime;
  /// Date time when the history data report is scheduled to be generated.
  final pulumi.Input<String?>? runDateTime;

  /// Creates a new [AccessReviewHistoryInstance].
  /// [displayName] The display name for the parent history definition.
  /// [expiration] Date time when history data report expires and the associated data is deleted.
  /// [fulfilledDateTime] Date time when the history data report is scheduled to be generated.
  /// [reviewHistoryPeriodEndDateTime] Date time used when selecting review data, all reviews included in data end on or before this date. For use only with one-time/non-recurring reports.
  /// [reviewHistoryPeriodStartDateTime] Date time used when selecting review data, all reviews included in data start on or after this date. For use only with one-time/non-recurring reports.
  /// [runDateTime] Date time when the history data report is scheduled to be generated.
  const AccessReviewHistoryInstance({
    this.displayName,
    this.expiration,
    this.fulfilledDateTime,
    this.reviewHistoryPeriodEndDateTime,
    this.reviewHistoryPeriodStartDateTime,
    this.runDateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'expiration': ?expiration,
      'fulfilledDateTime': ?fulfilledDateTime,
      'reviewHistoryPeriodEndDateTime': ?reviewHistoryPeriodEndDateTime,
      'reviewHistoryPeriodStartDateTime': ?reviewHistoryPeriodStartDateTime,
      'runDateTime': ?runDateTime,
    };
  }

  factory AccessReviewHistoryInstance.fromMap(Map<String, dynamic> map) {
    return AccessReviewHistoryInstance(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fulfilledDateTime: (() { final guardedValue = map['fulfilledDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reviewHistoryPeriodEndDateTime: (() { final guardedValue = map['reviewHistoryPeriodEndDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reviewHistoryPeriodStartDateTime: (() { final guardedValue = map['reviewHistoryPeriodStartDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runDateTime: (() { final guardedValue = map['runDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
