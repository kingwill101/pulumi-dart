// ignore_for_file: unused_element, unnecessary_cast


/// Access Review History Definition Instance.
class AccessReviewHistoryInstance {
  /// The display name for the parent history definition.
  final String? displayName;
  /// Date time when history data report expires and the associated data is deleted.
  final String? expiration;
  /// Date time when the history data report is scheduled to be generated.
  final String? fulfilledDateTime;
  /// Date time used when selecting review data, all reviews included in data end on or before this date. For use only with one-time/non-recurring reports.
  final String? reviewHistoryPeriodEndDateTime;
  /// Date time used when selecting review data, all reviews included in data start on or after this date. For use only with one-time/non-recurring reports.
  final String? reviewHistoryPeriodStartDateTime;
  /// Date time when the history data report is scheduled to be generated.
  final String? runDateTime;

  /// Creates a new [AccessReviewHistoryInstance].
  /// [displayName] The display name for the parent history definition.
  /// [expiration] Date time when history data report expires and the associated data is deleted.
  /// [fulfilledDateTime] Date time when the history data report is scheduled to be generated.
  /// [reviewHistoryPeriodEndDateTime] Date time used when selecting review data, all reviews included in data end on or before this date. For use only with one-time/non-recurring reports.
  /// [reviewHistoryPeriodStartDateTime] Date time used when selecting review data, all reviews included in data start on or after this date. For use only with one-time/non-recurring reports.
  /// [runDateTime] Date time when the history data report is scheduled to be generated.
  AccessReviewHistoryInstance({
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
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      expiration: map['expiration'] == null ? null : map['expiration'] as String,
      fulfilledDateTime: map['fulfilledDateTime'] == null ? null : map['fulfilledDateTime'] as String,
      reviewHistoryPeriodEndDateTime: map['reviewHistoryPeriodEndDateTime'] == null ? null : map['reviewHistoryPeriodEndDateTime'] as String,
      reviewHistoryPeriodStartDateTime: map['reviewHistoryPeriodStartDateTime'] == null ? null : map['reviewHistoryPeriodStartDateTime'] as String,
      runDateTime: map['runDateTime'] == null ? null : map['runDateTime'] as String,
    );
  }
}

