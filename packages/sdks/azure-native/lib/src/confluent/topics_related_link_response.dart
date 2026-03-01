// ignore_for_file: unused_element, unnecessary_cast


/// Partition Config spec of the topic record
class TopicsRelatedLinkResponse {
  /// Relationship of the topic
  final String? related;

  /// Creates a new [TopicsRelatedLinkResponse].
  /// [related] Relationship of the topic
  TopicsRelatedLinkResponse({
    this.related,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'related': ?related,
    };
  }

  factory TopicsRelatedLinkResponse.fromMap(Map<String, dynamic> map) {
    return TopicsRelatedLinkResponse(
      related: map['related'] == null ? null : map['related'] as String,
    );
  }
}

