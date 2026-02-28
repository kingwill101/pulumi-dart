// ignore_for_file: unused_element, unnecessary_cast

import 'composite_filter_response.dart';
import 'value_filter_response.dart';

/// A generic way of expressing filters in a query, which supports two approaches: **1. Setting a ValueFilter.** The name must match an operator_name defined in the schema for your data source. **2. Setting a CompositeFilter.** The filters are evaluated using the logical operator. The top-level operators can only be either an AND or a NOT. AND can appear only at the top-most level. OR can appear only under a top-level AND.
class FilterResponse {
  final CompositeFilterResponse compositeFilter;
  final ValueFilterResponse valueFilter;

  /// Creates a new [FilterResponse].
  /// [compositeFilter] Required.
  /// [valueFilter] Required.
  FilterResponse({
    required this.compositeFilter,
    required this.valueFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compositeFilter': compositeFilter.toMap(),
      'valueFilter': valueFilter.toMap(),
    };
  }

  factory FilterResponse.fromMap(Map<String, dynamic> map) {
    return FilterResponse(
      compositeFilter: CompositeFilterResponse.fromMap((map['compositeFilter'] as Map).cast<String, dynamic>()),
      valueFilter: ValueFilterResponse.fromMap((map['valueFilter'] as Map).cast<String, dynamic>()),
    );
  }
}

