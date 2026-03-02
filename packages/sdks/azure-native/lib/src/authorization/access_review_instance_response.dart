// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_review_reviewer_response.dart';

/// Access Review Instance.
class AccessReviewInstanceResponse {
  /// This is the collection of backup reviewers.
  final pulumi.Input<List<AccessReviewReviewerResponse>>? backupReviewers;
  /// The DateTime when the review instance is scheduled to end.
  final pulumi.Input<String>? endDateTime;
  /// The access review instance id.
  final pulumi.Input<String> id;
  /// The access review instance name.
  final pulumi.Input<String> name;
  /// This is the collection of reviewers.
  final pulumi.Input<List<AccessReviewReviewerResponse>>? reviewers;
  /// This field specifies the type of reviewers for a review. Usually for a review, reviewers are explicitly assigned. However, in some cases, the reviewers may not be assigned and instead be chosen dynamically. For example managers review or self review.
  final pulumi.Input<String> reviewersType;
  /// The DateTime when the review instance is scheduled to be start.
  final pulumi.Input<String>? startDateTime;
  /// This read-only field specifies the status of an access review instance.
  final pulumi.Input<String> status;
  /// The resource type.
  final pulumi.Input<String> type;

  /// Creates a new [AccessReviewInstanceResponse].
  /// [backupReviewers] This is the collection of backup reviewers.
  /// [endDateTime] The DateTime when the review instance is scheduled to end.
  /// [id] The access review instance id.
  /// [name] The access review instance name.
  /// [reviewers] This is the collection of reviewers.
  /// [reviewersType] This field specifies the type of reviewers for a review. Usually for a review, reviewers are explicitly assigned. However, in some cases, the reviewers may not be assigned and instead be chosen dynamically. For example managers review or self review.
  /// [startDateTime] The DateTime when the review instance is scheduled to be start.
  /// [status] This read-only field specifies the status of an access review instance.
  /// [type] The resource type.
  AccessReviewInstanceResponse({
    this.backupReviewers,
    this.endDateTime,
    required this.id,
    required this.name,
    this.reviewers,
    required this.reviewersType,
    this.startDateTime,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupReviewers': ?pulumi.Input.mapOptionalInputValue<List<AccessReviewReviewerResponse>, List<Map<String, dynamic>>>(backupReviewers, (value) => pulumi.Input.encodeList<AccessReviewReviewerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'endDateTime': ?endDateTime,
      'id': id,
      'name': name,
      'reviewers': ?pulumi.Input.mapOptionalInputValue<List<AccessReviewReviewerResponse>, List<Map<String, dynamic>>>(reviewers, (value) => pulumi.Input.encodeList<AccessReviewReviewerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reviewersType': reviewersType,
      'startDateTime': ?startDateTime,
      'status': status,
      'type': type,
    };
  }

  factory AccessReviewInstanceResponse.fromMap(Map<String, dynamic> map) {
    return AccessReviewInstanceResponse(
      backupReviewers: map['backupReviewers'] == null ? null : (pulumi.Input.decodeList<AccessReviewReviewerResponse>(map['backupReviewers'], (value) => AccessReviewReviewerResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      endDateTime: map['endDateTime'] == null ? null : (map['endDateTime'] as String).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      reviewers: map['reviewers'] == null ? null : (pulumi.Input.decodeList<AccessReviewReviewerResponse>(map['reviewers'], (value) => AccessReviewReviewerResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      reviewersType: (map['reviewersType'] as String).input(),
      startDateTime: map['startDateTime'] == null ? null : (map['startDateTime'] as String).input(),
      status: (map['status'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

