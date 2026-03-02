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
  FiltersConfigurationResponse({
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
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<BoolEqualsFilterResponse>(map['filters']!, (value) => BoolEqualsFilterResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      includedEventTypes: map['includedEventTypes'] == null ? null : ((map['includedEventTypes']! as List).cast<String>()).input(),
    );
  }
}

