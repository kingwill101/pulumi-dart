// ignore_for_file: unused_element, unnecessary_cast


/// Partition Config spec of the topic record
class TopicsRelatedLink {
  /// Relationship of the topic
  final String? related;

  /// Creates a new [TopicsRelatedLink].
  /// [related] Relationship of the topic
  TopicsRelatedLink({
    this.related,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'related': ?related,
    };
  }

  factory TopicsRelatedLink.fromMap(Map<String, dynamic> map) {
    return TopicsRelatedLink(
      related: map['related'] == null ? null : map['related'] as String,
    );
  }
}

