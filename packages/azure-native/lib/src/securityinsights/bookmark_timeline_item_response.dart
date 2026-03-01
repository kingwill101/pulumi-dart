// ignore_for_file: unused_element, unnecessary_cast

import 'user_info_response.dart';

/// Represents bookmark timeline item.
class BookmarkTimelineItemResponse {
  /// The bookmark azure resource id.
  final String azureResourceId;
  /// Describes a user that created the bookmark
  final UserInfoResponse? createdBy;
  /// The bookmark display name.
  final String? displayName;
  /// The bookmark end time.
  final String? endTimeUtc;
  /// The bookmark event time.
  final String? eventTime;
  /// The entity query kind
  /// Expected value is 'Bookmark'.
  final String kind;
  /// List of labels relevant to this bookmark
  final List<String>? labels;
  /// The notes of the bookmark
  final String? notes;
  /// The bookmark start time.
  final String? startTimeUtc;

  /// Creates a new [BookmarkTimelineItemResponse].
  /// [azureResourceId] The bookmark azure resource id.
  /// [createdBy] Describes a user that created the bookmark
  /// [displayName] The bookmark display name.
  /// [endTimeUtc] The bookmark end time.
  /// [eventTime] The bookmark event time.
  /// [kind] The entity query kind
  /// [labels] List of labels relevant to this bookmark
  /// [notes] The notes of the bookmark
  /// [startTimeUtc] The bookmark start time.
  BookmarkTimelineItemResponse({
    required this.azureResourceId,
    this.createdBy,
    this.displayName,
    this.endTimeUtc,
    this.eventTime,
    required this.kind,
    this.labels,
    this.notes,
    this.startTimeUtc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureResourceId': azureResourceId,
      'createdBy': ?createdBy == null ? null : createdBy!.toMap(),
      'displayName': ?displayName,
      'endTimeUtc': ?endTimeUtc,
      'eventTime': ?eventTime,
      'kind': kind,
      'labels': ?labels,
      'notes': ?notes,
      'startTimeUtc': ?startTimeUtc,
    };
  }

  factory BookmarkTimelineItemResponse.fromMap(Map<String, dynamic> map) {
    return BookmarkTimelineItemResponse(
      azureResourceId: map['azureResourceId'] as String,
      createdBy: map['createdBy'] == null ? null : UserInfoResponse.fromMap((map['createdBy'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      endTimeUtc: map['endTimeUtc'] == null ? null : map['endTimeUtc'] as String,
      eventTime: map['eventTime'] == null ? null : map['eventTime'] as String,
      kind: map['kind'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as List).cast<String>(),
      notes: map['notes'] == null ? null : map['notes'] as String,
      startTimeUtc: map['startTimeUtc'] == null ? null : map['startTimeUtc'] as String,
    );
  }
}

