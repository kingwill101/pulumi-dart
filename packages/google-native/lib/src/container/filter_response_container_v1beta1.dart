// ignore_for_file: unused_element, unnecessary_cast

/// Allows filtering to one or more specific event types. If event types are present, those and only those event types will be transmitted to the cluster. Other types will be skipped. If no filter is specified, or no event types are present, all event types will be sent
class FilterResponseContainerV1beta1 {
  /// Event types to allowlist.
  final List<String> eventType;

  /// Creates a new [FilterResponseContainerV1beta1].
  /// [eventType] Event types to allowlist.
  FilterResponseContainerV1beta1({
    required this.eventType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['eventType'] = eventType;
    return map;
  }

  factory FilterResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return FilterResponseContainerV1beta1(
      eventType: (map['eventType'] as List).cast<String>(),
    );
  }
}
