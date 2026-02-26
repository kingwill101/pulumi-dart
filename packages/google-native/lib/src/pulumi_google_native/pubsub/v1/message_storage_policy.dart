// ignore_for_file: unused_element, unnecessary_cast

/// A policy constraining the storage of messages published to the topic.
class MessageStoragePolicy {
  /// Optional. A list of IDs of Google Cloud regions where messages that are published to the topic may be persisted in storage. Messages published by publishers running in non-allowed Google Cloud regions (or running outside of Google Cloud altogether) are routed for storage in one of the allowed regions. An empty list means that no regions are allowed, and is not a valid configuration.
  final List<String>? allowedPersistenceRegions;

  /// Optional. If true, `allowed_persistence_regions` is also used to enforce in-transit guarantees for messages. That is, Pub/Sub will fail Publish operations on this topic and subscribe operations on any subscription attached to this topic in any region that is not in `allowed_persistence_regions`.
  final bool? enforceInTransit;

  MessageStoragePolicy({
    this.allowedPersistenceRegions,
    this.enforceInTransit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedPersistenceRegionsValue = allowedPersistenceRegions;
    if (allowedPersistenceRegionsValue != null) {
      map['allowedPersistenceRegions'] = allowedPersistenceRegionsValue;
    }
    final enforceInTransitValue = enforceInTransit;
    if (enforceInTransitValue != null) {
      map['enforceInTransit'] = enforceInTransitValue;
    }
    return map;
  }

  factory MessageStoragePolicy.fromMap(Map<String, dynamic> map) {
    return MessageStoragePolicy(
      allowedPersistenceRegions: map['allowedPersistenceRegions'] == null
          ? null
          : (map['allowedPersistenceRegions'] as List).cast<String>(),
      enforceInTransit: map['enforceInTransit'] == null
          ? null
          : map['enforceInTransit'] as bool,
    );
  }
}
