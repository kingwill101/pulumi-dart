// ignore_for_file: unused_element, unnecessary_cast

class TopicMessageStoragePolicy {
  /// A list of IDs of GCP regions where messages that are published to
  /// the topic may be persisted in storage. Messages published by
  /// publishers running in non-allowed GCP regions (or running outside
  /// of GCP altogether) will be routed for storage in one of the
  /// allowed regions. An empty list means that no regions are allowed,
  /// and is not a valid configuration.
  final List<String> allowedPersistenceRegions;

  /// If true, `allowedPersistenceRegions` is also used to enforce in-transit
  /// guarantees for messages. That is, Pub/Sub will fail topics.publish
  /// operations on this topic and subscribe operations on any subscription
  /// attached to this topic in any region that is not in `allowedPersistenceRegions`.
  final bool? enforceInTransit;

  TopicMessageStoragePolicy({
    required this.allowedPersistenceRegions,
    this.enforceInTransit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedPersistenceRegions'] = allowedPersistenceRegions;
    final enforceInTransitValue = enforceInTransit;
    if (enforceInTransitValue != null) {
      map['enforceInTransit'] = enforceInTransitValue;
    }
    return map;
  }

  factory TopicMessageStoragePolicy.fromMap(Map<String, dynamic> map) {
    return TopicMessageStoragePolicy(
      allowedPersistenceRegions:
          (map['allowedPersistenceRegions'] as List).cast<String>(),
      enforceInTransit: map['enforceInTransit'] == null
          ? null
          : map['enforceInTransit'] as bool,
    );
  }
}
