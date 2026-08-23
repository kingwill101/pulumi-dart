// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Partition Config spec of the topic record
class TopicsRelatedLinkResponse {
  /// Relationship of the topic
  final pulumi.Input<String>? related;

  /// Creates a new [TopicsRelatedLinkResponse].
  /// [related] Relationship of the topic
  const TopicsRelatedLinkResponse({
    this.related,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'related': ?related,
    };
  }

  factory TopicsRelatedLinkResponse.fromMap(Map<String, dynamic> map) {
    return TopicsRelatedLinkResponse(
      related: (() { final guardedValue = map['related']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
