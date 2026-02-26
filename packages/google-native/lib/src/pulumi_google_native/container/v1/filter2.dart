// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'filter_event_type_item.dart';

/// Allows filtering to one or more specific event types. If event types are present, those and only those event types will be transmitted to the cluster. Other types will be skipped. If no filter is specified, or no event types are present, all event types will be sent
class Filter2 {
  /// Event types to allowlist.
  final List<FilterEventTypeItem>? eventType;

  Filter2({
    this.eventType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final eventTypeValue = eventType;
    if (eventTypeValue != null) {
      map['eventType'] = Input.encodeList<FilterEventTypeItem, String>(
          eventTypeValue, (value) => value.value);
    }
    return map;
  }

  factory Filter2.fromMap(Map<String, dynamic> map) {
    return Filter2(
      eventType: map['eventType'] == null
          ? null
          : Input.decodeList<FilterEventTypeItem>(map['eventType'],
              (value) => FilterEventTypeItem.fromValue(value as String)),
    );
  }
}
