// ignore_for_file: unused_element, unnecessary_cast

class VaultNotification {
  /// You can configure a vault to publish a notification for `ArchiveRetrievalCompleted` and `InventoryRetrievalCompleted` events.
  final List<String> events;

  /// The SNS Topic ARN.
  final String snsTopic;

  VaultNotification({
    required this.events,
    required this.snsTopic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['events'] = events;
    map['snsTopic'] = snsTopic;
    return map;
  }

  factory VaultNotification.fromMap(Map<String, dynamic> map) {
    return VaultNotification(
      events: (map['events'] as List).cast<String>(),
      snsTopic: map['snsTopic'] as String,
    );
  }
}
