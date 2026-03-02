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
  FiltersConfiguration({
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
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<BoolEqualsFilter>(map['filters']!, (value) => BoolEqualsFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      includedEventTypes: map['includedEventTypes'] == null ? null : ((map['includedEventTypes']! as List).cast<String>()).input(),
    );
  }
}

