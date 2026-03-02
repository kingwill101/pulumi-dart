// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the source to which filter applies.
class CustomTopicConfigResponse {
  /// If blocking would occur.
  final pulumi.Input<bool>? blocking;
  /// Content source to apply the Content Filters.
  final pulumi.Input<String>? source;
  /// Name of RAI topic.
  final pulumi.Input<String>? topicName;

  /// Creates a new [CustomTopicConfigResponse].
  /// [blocking] If blocking would occur.
  /// [source] Content source to apply the Content Filters.
  /// [topicName] Name of RAI topic.
  CustomTopicConfigResponse({
    this.blocking,
    this.source,
    this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blocking': ?blocking,
      'source': ?source,
      'topicName': ?topicName,
    };
  }

  factory CustomTopicConfigResponse.fromMap(Map<String, dynamic> map) {
    return CustomTopicConfigResponse(
      blocking: map['blocking'] == null ? null : (map['blocking'] as bool).input(),
      source: map['source'] == null ? null : (map['source'] as String).input(),
      topicName: map['topicName'] == null ? null : (map['topicName'] as String).input(),
    );
  }
}

