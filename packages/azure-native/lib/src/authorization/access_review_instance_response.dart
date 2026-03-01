// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_review_reviewer_response.dart';

/// Access Review Instance.
class AccessReviewInstanceResponse {
  /// This is the collection of backup reviewers.
  final List<AccessReviewReviewerResponse>? backupReviewers;
  /// The DateTime when the review instance is scheduled to end.
  final String? endDateTime;
  /// The access review instance id.
  final String id;
  /// The access review instance name.
  final String name;
  /// This is the collection of reviewers.
  final List<AccessReviewReviewerResponse>? reviewers;
  /// This field specifies the type of reviewers for a review. Usually for a review, reviewers are explicitly assigned. However, in some cases, the reviewers may not be assigned and instead be chosen dynamically. For example managers review or self review.
  final String reviewersType;
  /// The DateTime when the review instance is scheduled to be start.
  final String? startDateTime;
  /// This read-only field specifies the status of an access review instance.
  final String status;
  /// The resource type.
  final String type;

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
      'backupReviewers': ?backupReviewers == null ? null : pulumi.Input.encodeList<AccessReviewReviewerResponse, Map<String, dynamic>>(backupReviewers!, (value) => value.toMap()),
      'endDateTime': ?endDateTime,
      'id': id,
      'name': name,
      'reviewers': ?reviewers == null ? null : pulumi.Input.encodeList<AccessReviewReviewerResponse, Map<String, dynamic>>(reviewers!, (value) => value.toMap()),
      'reviewersType': reviewersType,
      'startDateTime': ?startDateTime,
      'status': status,
      'type': type,
    };
  }

  factory AccessReviewInstanceResponse.fromMap(Map<String, dynamic> map) {
    return AccessReviewInstanceResponse(
      backupReviewers: map['backupReviewers'] == null ? null : pulumi.Input.decodeList<AccessReviewReviewerResponse>(map['backupReviewers'], (value) => AccessReviewReviewerResponse.fromMap((value as Map).cast<String, dynamic>())),
      endDateTime: map['endDateTime'] == null ? null : map['endDateTime'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      reviewers: map['reviewers'] == null ? null : pulumi.Input.decodeList<AccessReviewReviewerResponse>(map['reviewers'], (value) => AccessReviewReviewerResponse.fromMap((value as Map).cast<String, dynamic>())),
      reviewersType: map['reviewersType'] as String,
      startDateTime: map['startDateTime'] == null ? null : map['startDateTime'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
    );
  }
}

