// ignore_for_file: unused_element, unnecessary_cast

class ListingPubsubTopic {
  /// Region hint on where the data might be published. Data affinity regions are modifiable.
  /// See https://cloud.google.com/about/locations for full listing of possible Cloud regions.
  final List<String>? dataAffinityRegions;

  /// Resource name of the Pub/Sub topic source for this listing. e.g. projects/myproject/topics/topicId
  final String topic;

  /// Creates a new [ListingPubsubTopic].
  /// [dataAffinityRegions] Region hint on where the data might be published. Data affinity regions are modifiable.
  /// [topic] Resource name of the Pub/Sub topic source for this listing. e.g. projects/myproject/topics/topicId
  ListingPubsubTopic({
    this.dataAffinityRegions,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataAffinityRegionsValue = dataAffinityRegions;
    if (dataAffinityRegionsValue != null) {
      map['dataAffinityRegions'] = dataAffinityRegionsValue;
    }
    map['topic'] = topic;
    return map;
  }

  factory ListingPubsubTopic.fromMap(Map<String, dynamic> map) {
    return ListingPubsubTopic(
      dataAffinityRegions: map['dataAffinityRegions'] == null
          ? null
          : (map['dataAffinityRegions'] as List).cast<String>(),
      topic: map['topic'] as String,
    );
  }
}
