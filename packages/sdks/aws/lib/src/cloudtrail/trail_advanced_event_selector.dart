// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trail_advanced_event_selector_field_selector.dart';

class TrailAdvancedEventSelector {
  /// Specifies the selector statements in an advanced event selector. Fields documented below.
  final pulumi.Input<List<TrailAdvancedEventSelectorFieldSelector>> fieldSelectors;
  /// Name of the trail.
  final pulumi.Input<String>? name;

  /// Creates a new [TrailAdvancedEventSelector].
  /// [fieldSelectors] Specifies the selector statements in an advanced event selector. Fields documented below.
  /// [name] Name of the trail.
  const TrailAdvancedEventSelector({
    required this.fieldSelectors,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldSelectors': pulumi.Input.mapInputValue<List<TrailAdvancedEventSelectorFieldSelector>, List<Map<String, dynamic>>>(fieldSelectors, (value) => pulumi.Input.encodeList<TrailAdvancedEventSelectorFieldSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory TrailAdvancedEventSelector.fromMap(Map<String, dynamic> map) {
    return TrailAdvancedEventSelector(
      fieldSelectors: pulumi.Input.fromValue(pulumi.Input.decodeList<TrailAdvancedEventSelectorFieldSelector>(map['fieldSelectors']!, (value) => TrailAdvancedEventSelectorFieldSelector.fromMap((value as Map).cast<String, dynamic>()))),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
