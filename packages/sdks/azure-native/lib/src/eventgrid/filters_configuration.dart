// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Filters configuration for the Event Subscription.
class FiltersConfiguration {
  /// An array of filters that are used for filtering event subscriptions.
  final pulumi.Input<List<dynamic>?>? filters;
  /// A list of applicable event types that need to be part of the event subscription. If it is desired to subscribe to all default event types, set the IncludedEventTypes to null.
  final pulumi.Input<List<String>?>? includedEventTypes;

  /// Creates a new [FiltersConfiguration].
  /// [filters] An array of filters that are used for filtering event subscriptions.
  /// [includedEventTypes] A list of applicable event types that need to be part of the event subscription. If it is desired to subscribe to all default event types, set the IncludedEventTypes to null.
  const FiltersConfiguration({
    this.filters,
    this.includedEventTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters,
      'includedEventTypes': ?includedEventTypes,
    };
  }

  factory FiltersConfiguration.fromMap(Map<String, dynamic> map) {
    return FiltersConfiguration(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      includedEventTypes: (() { final guardedValue = map['includedEventTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
