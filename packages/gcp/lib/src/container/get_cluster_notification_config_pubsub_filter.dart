// ignore_for_file: unused_element, unnecessary_cast


class GetClusterNotificationConfigPubsubFilter {
  /// Can be used to filter what notifications are sent. Valid values include include UPGRADE_AVAILABLE_EVENT, UPGRADE_EVENT, SECURITY_BULLETIN_EVENT, and UPGRADE_INFO_EVENT
  final List<String> eventTypes;

  /// Creates a new [GetClusterNotificationConfigPubsubFilter].
  /// [eventTypes] Can be used to filter what notifications are sent. Valid values include include UPGRADE_AVAILABLE_EVENT, UPGRADE_EVENT, SECURITY_BULLETIN_EVENT, and UPGRADE_INFO_EVENT
  GetClusterNotificationConfigPubsubFilter({
    required this.eventTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventTypes': eventTypes,
    };
  }

  factory GetClusterNotificationConfigPubsubFilter.fromMap(Map<String, dynamic> map) {
    return GetClusterNotificationConfigPubsubFilter(
      eventTypes: (map['eventTypes'] as List).cast<String>(),
    );
  }
}

