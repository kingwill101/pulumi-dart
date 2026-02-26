// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../trail_advanced_event_selector_field_selector/trail_advanced_event_selector_field_selector.dart';

class TrailAdvancedEventSelector {
  /// Specifies the selector statements in an advanced event selector. Fields documented below.
  final List<TrailAdvancedEventSelectorFieldSelector> fieldSelectors;

  /// Name of the trail.
  final String? name;

  TrailAdvancedEventSelector({
    required this.fieldSelectors,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fieldSelectors'] = Input.encodeList<
        TrailAdvancedEventSelectorFieldSelector,
        Map<String, dynamic>>(fieldSelectors, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory TrailAdvancedEventSelector.fromMap(Map<String, dynamic> map) {
    return TrailAdvancedEventSelector(
      fieldSelectors: Input.decodeList<TrailAdvancedEventSelectorFieldSelector>(
          map['fieldSelectors'],
          (value) => TrailAdvancedEventSelectorFieldSelector.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
