// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Partition Config spec of the topic record
class TopicsRelatedLink {
  /// Relationship of the topic
  final pulumi.Input<String>? related;

  /// Creates a new [TopicsRelatedLink].
  /// [related] Relationship of the topic
  const TopicsRelatedLink({
    this.related,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'related': ?related,
    };
  }

  factory TopicsRelatedLink.fromMap(Map<String, dynamic> map) {
    return TopicsRelatedLink(
      related: (() { final guardedValue = map['related']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

