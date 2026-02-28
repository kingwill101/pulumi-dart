// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_data_store_advanced_event_selector_field_selector.dart';

class EventDataStoreAdvancedEventSelector {
  /// Specifies the selector statements in an advanced event selector. Fields documented below.
  final List<EventDataStoreAdvancedEventSelectorFieldSelector>? fieldSelectors;

  /// Specifies the name of the advanced event selector.
  final String? name;

  /// Creates a new [EventDataStoreAdvancedEventSelector].
  /// [fieldSelectors] Specifies the selector statements in an advanced event selector. Fields documented below.
  /// [name] Specifies the name of the advanced event selector.
  EventDataStoreAdvancedEventSelector({
    this.fieldSelectors,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldSelectorsValue = fieldSelectors;
    if (fieldSelectorsValue != null) {
      map['fieldSelectors'] = pulumi.Input.encodeList<
          EventDataStoreAdvancedEventSelectorFieldSelector,
          Map<String, dynamic>>(fieldSelectorsValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory EventDataStoreAdvancedEventSelector.fromMap(
      Map<String, dynamic> map) {
    return EventDataStoreAdvancedEventSelector(
      fieldSelectors: map['fieldSelectors'] == null
          ? null
          : pulumi.Input.decodeList<
                  EventDataStoreAdvancedEventSelectorFieldSelector>(
              map['fieldSelectors'],
              (value) =>
                  EventDataStoreAdvancedEventSelectorFieldSelector.fromMap(
                      (value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
