// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RAI Custom Topic properties.
class RaiTopicPropertiesResponse {
  /// Creation time of the custom topic.
  final pulumi.Input<String>? createdAt;
  /// Description of the custom topic.
  final pulumi.Input<String>? description;
  /// Failed reason if the status is Failed.
  final pulumi.Input<String>? failedReason;
  /// Last modified time of the custom topic.
  final pulumi.Input<String>? lastModifiedAt;
  /// Sample blob url for the custom topic.
  final pulumi.Input<String>? sampleBlobUrl;
  /// Status of the custom topic.
  final pulumi.Input<String>? status;
  /// The unique identifier of the custom topic.
  final pulumi.Input<String>? topicId;
  /// The name of the custom topic.
  final pulumi.Input<String>? topicName;

  /// Creates a new [RaiTopicPropertiesResponse].
  /// [createdAt] Creation time of the custom topic.
  /// [description] Description of the custom topic.
  /// [failedReason] Failed reason if the status is Failed.
  /// [lastModifiedAt] Last modified time of the custom topic.
  /// [sampleBlobUrl] Sample blob url for the custom topic.
  /// [status] Status of the custom topic.
  /// [topicId] The unique identifier of the custom topic.
  /// [topicName] The name of the custom topic.
  RaiTopicPropertiesResponse({
    this.createdAt,
    this.description,
    this.failedReason,
    this.lastModifiedAt,
    this.sampleBlobUrl,
    this.status,
    this.topicId,
    this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'description': ?description,
      'failedReason': ?failedReason,
      'lastModifiedAt': ?lastModifiedAt,
      'sampleBlobUrl': ?sampleBlobUrl,
      'status': ?status,
      'topicId': ?topicId,
      'topicName': ?topicName,
    };
  }

  factory RaiTopicPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RaiTopicPropertiesResponse(
      createdAt: map['createdAt'] == null ? null : (map['createdAt']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      failedReason: map['failedReason'] == null ? null : (map['failedReason']! as String).input(),
      lastModifiedAt: map['lastModifiedAt'] == null ? null : (map['lastModifiedAt']! as String).input(),
      sampleBlobUrl: map['sampleBlobUrl'] == null ? null : (map['sampleBlobUrl']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      topicId: map['topicId'] == null ? null : (map['topicId']! as String).input(),
      topicName: map['topicName'] == null ? null : (map['topicName']! as String).input(),
    );
  }
}

