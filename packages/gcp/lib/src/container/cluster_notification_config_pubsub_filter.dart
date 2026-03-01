// ignore_for_file: unused_element, unnecessary_cast


class ClusterNotificationConfigPubsubFilter {
  /// Can be used to filter what notifications are sent. Accepted values are `UPGRADE_AVAILABLE_EVENT`, `UPGRADE_EVENT`, `SECURITY_BULLETIN_EVENT` and `UPGRADE_INFO_EVENT`. See [Filtering notifications](https://cloud.google.com/kubernetes-engine/docs/concepts/cluster-notifications#filtering) for more details.
  final List<String> eventTypes;

  /// Creates a new [ClusterNotificationConfigPubsubFilter].
  /// [eventTypes] Can be used to filter what notifications are sent. Accepted values are `UPGRADE_AVAILABLE_EVENT`, `UPGRADE_EVENT`, `SECURITY_BULLETIN_EVENT` and `UPGRADE_INFO_EVENT`. See [Filtering notifications](https://cloud.google.com/kubernetes-engine/docs/concepts/cluster-notifications#filtering) for more details.
  ClusterNotificationConfigPubsubFilter({
    required this.eventTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventTypes': eventTypes,
    };
  }

  factory ClusterNotificationConfigPubsubFilter.fromMap(Map<String, dynamic> map) {
    return ClusterNotificationConfigPubsubFilter(
      eventTypes: (map['eventTypes'] as List).cast<String>(),
    );
  }
}

