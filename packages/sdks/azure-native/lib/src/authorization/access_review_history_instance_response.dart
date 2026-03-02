// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Access Review History Definition Instance.
class AccessReviewHistoryInstanceResponse {
  /// The display name for the parent history definition.
  final pulumi.Input<String>? displayName;
  /// Uri which can be used to retrieve review history data. To generate this Uri, generateDownloadUri() must be called for a specific accessReviewHistoryDefinitionInstance. The link expires after a 24 hour period. Callers can see the expiration date time by looking at the 'se' parameter in the generated uri.
  final pulumi.Input<String> downloadUri;
  /// Date time when history data report expires and the associated data is deleted.
  final pulumi.Input<String>? expiration;
  /// Date time when the history data report is scheduled to be generated.
  final pulumi.Input<String>? fulfilledDateTime;
  /// The access review history definition instance id.
  final pulumi.Input<String> id;
  /// The access review history definition instance unique id.
  final pulumi.Input<String> name;
  /// Date time used when selecting review data, all reviews included in data end on or before this date. For use only with one-time/non-recurring reports.
  final pulumi.Input<String>? reviewHistoryPeriodEndDateTime;
  /// Date time used when selecting review data, all reviews included in data start on or after this date. For use only with one-time/non-recurring reports.
  final pulumi.Input<String>? reviewHistoryPeriodStartDateTime;
  /// Date time when the history data report is scheduled to be generated.
  final pulumi.Input<String>? runDateTime;
  /// Status of the requested review history instance data. This is either requested, in-progress, done or error. The state transitions are as follows - Requested -> InProgress -> Done -> Expired
  final pulumi.Input<String> status;
  /// The resource type.
  final pulumi.Input<String> type;

  /// Creates a new [AccessReviewHistoryInstanceResponse].
  /// [displayName] The display name for the parent history definition.
  /// [downloadUri] Uri which can be used to retrieve review history data. To generate this Uri, generateDownloadUri() must be called for a specific accessReviewHistoryDefinitionInstance. The link expires after a 24 hour period. Callers can see the expiration date time by looking at the 'se' parameter in the generated uri.
  /// [expiration] Date time when history data report expires and the associated data is deleted.
  /// [fulfilledDateTime] Date time when the history data report is scheduled to be generated.
  /// [id] The access review history definition instance id.
  /// [name] The access review history definition instance unique id.
  /// [reviewHistoryPeriodEndDateTime] Date time used when selecting review data, all reviews included in data end on or before this date. For use only with one-time/non-recurring reports.
  /// [reviewHistoryPeriodStartDateTime] Date time used when selecting review data, all reviews included in data start on or after this date. For use only with one-time/non-recurring reports.
  /// [runDateTime] Date time when the history data report is scheduled to be generated.
  /// [status] Status of the requested review history instance data. This is either requested, in-progress, done or error. The state transitions are as follows - Requested -> InProgress -> Done -> Expired
  /// [type] The resource type.
  AccessReviewHistoryInstanceResponse({
    this.displayName,
    required this.downloadUri,
    this.expiration,
    this.fulfilledDateTime,
    required this.id,
    required this.name,
    this.reviewHistoryPeriodEndDateTime,
    this.reviewHistoryPeriodStartDateTime,
    this.runDateTime,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'downloadUri': downloadUri,
      'expiration': ?expiration,
      'fulfilledDateTime': ?fulfilledDateTime,
      'id': id,
      'name': name,
      'reviewHistoryPeriodEndDateTime': ?reviewHistoryPeriodEndDateTime,
      'reviewHistoryPeriodStartDateTime': ?reviewHistoryPeriodStartDateTime,
      'runDateTime': ?runDateTime,
      'status': status,
      'type': type,
    };
  }

  factory AccessReviewHistoryInstanceResponse.fromMap(Map<String, dynamic> map) {
    return AccessReviewHistoryInstanceResponse(
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      downloadUri: (map['downloadUri'] as String).input(),
      expiration: map['expiration'] == null ? null : (map['expiration']! as String).input(),
      fulfilledDateTime: map['fulfilledDateTime'] == null ? null : (map['fulfilledDateTime']! as String).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      reviewHistoryPeriodEndDateTime: map['reviewHistoryPeriodEndDateTime'] == null ? null : (map['reviewHistoryPeriodEndDateTime']! as String).input(),
      reviewHistoryPeriodStartDateTime: map['reviewHistoryPeriodStartDateTime'] == null ? null : (map['reviewHistoryPeriodStartDateTime']! as String).input(),
      runDateTime: map['runDateTime'] == null ? null : (map['runDateTime']! as String).input(),
      status: (map['status'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

