// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_data_store_advanced_event_selector_field_selector.dart';

class EventDataStoreAdvancedEventSelector {
  /// Specifies the selector statements in an advanced event selector. Fields documented below.
  final pulumi.Input<List<EventDataStoreAdvancedEventSelectorFieldSelector>>? fieldSelectors;
  /// Specifies the name of the advanced event selector.
  final pulumi.Input<String>? name;

  /// Creates a new [EventDataStoreAdvancedEventSelector].
  /// [fieldSelectors] Specifies the selector statements in an advanced event selector. Fields documented below.
  /// [name] Specifies the name of the advanced event selector.
  EventDataStoreAdvancedEventSelector({
    this.fieldSelectors,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldSelectors': ?pulumi.Input.mapOptionalInputValue<List<EventDataStoreAdvancedEventSelectorFieldSelector>, List<Map<String, dynamic>>>(fieldSelectors, (value) => pulumi.Input.encodeList<EventDataStoreAdvancedEventSelectorFieldSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory EventDataStoreAdvancedEventSelector.fromMap(Map<String, dynamic> map) {
    return EventDataStoreAdvancedEventSelector(
      fieldSelectors: (() { final guardedValue = map['fieldSelectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EventDataStoreAdvancedEventSelectorFieldSelector>(guardedValue, (value) => EventDataStoreAdvancedEventSelectorFieldSelector.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

