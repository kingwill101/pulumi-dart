// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RAI Custom Topic properties.
class RaiTopicProperties {
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

  /// Creates a new [RaiTopicProperties].
  /// [createdAt] Creation time of the custom topic.
  /// [description] Description of the custom topic.
  /// [failedReason] Failed reason if the status is Failed.
  /// [lastModifiedAt] Last modified time of the custom topic.
  /// [sampleBlobUrl] Sample blob url for the custom topic.
  /// [status] Status of the custom topic.
  /// [topicId] The unique identifier of the custom topic.
  /// [topicName] The name of the custom topic.
  RaiTopicProperties({
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

  factory RaiTopicProperties.fromMap(Map<String, dynamic> map) {
    return RaiTopicProperties(
      createdAt: (() {
        final guardedValue = map['createdAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      failedReason: (() {
        final guardedValue = map['failedReason'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastModifiedAt: (() {
        final guardedValue = map['lastModifiedAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sampleBlobUrl: (() {
        final guardedValue = map['sampleBlobUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      topicId: (() {
        final guardedValue = map['topicId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      topicName: (() {
        final guardedValue = map['topicName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
