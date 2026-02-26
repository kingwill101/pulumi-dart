// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'filter_event_type_item2.dart';

/// Allows filtering to one or more specific event types. If event types are present, those and only those event types will be transmitted to the cluster. Other types will be skipped. If no filter is specified, or no event types are present, all event types will be sent
class Filter3 {
  /// Event types to allowlist.
  final List<FilterEventTypeItem2>? eventType;

  Filter3({
    this.eventType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final eventTypeValue = eventType;
    if (eventTypeValue != null) {
      map['eventType'] = Input.encodeList<FilterEventTypeItem2, String>(
          eventTypeValue, (value) => value.value);
    }
    return map;
  }

  factory Filter3.fromMap(Map<String, dynamic> map) {
    return Filter3(
      eventType: map['eventType'] == null
          ? null
          : Input.decodeList<FilterEventTypeItem2>(map['eventType'],
              (value) => FilterEventTypeItem2.fromValue(value as String)),
    );
  }
}
