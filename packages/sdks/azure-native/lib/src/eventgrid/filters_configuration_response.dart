// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bool_equals_filter_response.dart';

/// Filters configuration for the Event Subscription.
class FiltersConfigurationResponse {
  /// An array of filters that are used for filtering event subscriptions.
  final pulumi.Input<List<BoolEqualsFilterResponse>>? filters;
  /// A list of applicable event types that need to be part of the event subscription. If it is desired to subscribe to all default event types, set the IncludedEventTypes to null.
  final pulumi.Input<List<String>>? includedEventTypes;

  /// Creates a new [FiltersConfigurationResponse].
  /// [filters] An array of filters that are used for filtering event subscriptions.
  /// [includedEventTypes] A list of applicable event types that need to be part of the event subscription. If it is desired to subscribe to all default event types, set the IncludedEventTypes to null.
  const FiltersConfigurationResponse({
    this.filters,
    this.includedEventTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<BoolEqualsFilterResponse>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<BoolEqualsFilterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includedEventTypes': ?includedEventTypes,
    };
  }

  factory FiltersConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return FiltersConfigurationResponse(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BoolEqualsFilterResponse>(guardedValue, (value) => BoolEqualsFilterResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      includedEventTypes: (() { final guardedValue = map['includedEventTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
