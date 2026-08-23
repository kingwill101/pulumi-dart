// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bool_equals_filter.dart';

/// Filters configuration for the Event Subscription.
class FiltersConfiguration {
  /// An array of filters that are used for filtering event subscriptions.
  final pulumi.Input<List<BoolEqualsFilter>>? filters;
  /// A list of applicable event types that need to be part of the event subscription. If it is desired to subscribe to all default event types, set the IncludedEventTypes to null.
  final pulumi.Input<List<String>>? includedEventTypes;

  /// Creates a new [FiltersConfiguration].
  /// [filters] An array of filters that are used for filtering event subscriptions.
  /// [includedEventTypes] A list of applicable event types that need to be part of the event subscription. If it is desired to subscribe to all default event types, set the IncludedEventTypes to null.
  const FiltersConfiguration({
    this.filters,
    this.includedEventTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<BoolEqualsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<BoolEqualsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includedEventTypes': ?includedEventTypes,
    };
  }

  factory FiltersConfiguration.fromMap(Map<String, dynamic> map) {
    return FiltersConfiguration(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BoolEqualsFilter>(guardedValue, (value) => BoolEqualsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      includedEventTypes: (() { final guardedValue = map['includedEventTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
