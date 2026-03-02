// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_review_reviewer.dart';

/// Access Review Instance.
class AccessReviewInstance {
  /// This is the collection of backup reviewers.
  final pulumi.Input<List<AccessReviewReviewer>>? backupReviewers;
  /// The DateTime when the review instance is scheduled to end.
  final pulumi.Input<String>? endDateTime;
  /// This is the collection of reviewers.
  final pulumi.Input<List<AccessReviewReviewer>>? reviewers;
  /// The DateTime when the review instance is scheduled to be start.
  final pulumi.Input<String>? startDateTime;

  /// Creates a new [AccessReviewInstance].
  /// [backupReviewers] This is the collection of backup reviewers.
  /// [endDateTime] The DateTime when the review instance is scheduled to end.
  /// [reviewers] This is the collection of reviewers.
  /// [startDateTime] The DateTime when the review instance is scheduled to be start.
  AccessReviewInstance({
    this.backupReviewers,
    this.endDateTime,
    this.reviewers,
    this.startDateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupReviewers': ?pulumi.Input.mapOptionalInputValue<List<AccessReviewReviewer>, List<Map<String, dynamic>>>(backupReviewers, (value) => pulumi.Input.encodeList<AccessReviewReviewer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'endDateTime': ?endDateTime,
      'reviewers': ?pulumi.Input.mapOptionalInputValue<List<AccessReviewReviewer>, List<Map<String, dynamic>>>(reviewers, (value) => pulumi.Input.encodeList<AccessReviewReviewer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startDateTime': ?startDateTime,
    };
  }

  factory AccessReviewInstance.fromMap(Map<String, dynamic> map) {
    return AccessReviewInstance(
      backupReviewers: map['backupReviewers'] == null ? null : (pulumi.Input.decodeList<AccessReviewReviewer>(map['backupReviewers'], (value) => AccessReviewReviewer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      endDateTime: map['endDateTime'] == null ? null : (map['endDateTime'] as String).input(),
      reviewers: map['reviewers'] == null ? null : (pulumi.Input.decodeList<AccessReviewReviewer>(map['reviewers'], (value) => AccessReviewReviewer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      startDateTime: map['startDateTime'] == null ? null : (map['startDateTime'] as String).input(),
    );
  }
}

