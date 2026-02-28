// ignore_for_file: unused_element, unnecessary_cast

import 'sort_options_sort_order.dart';

class SortOptions {
  /// The name of the operator corresponding to the field to sort on. The corresponding property must be marked as sortable.
  final String? operatorName;

  /// Ascending is the default sort order
  final SortOptionsSortOrder? sortOrder;

  /// Creates a new [SortOptions].
  /// [operatorName] The name of the operator corresponding to the field to sort on. The corresponding property must be marked as sortable.
  /// [sortOrder] Ascending is the default sort order
  SortOptions({
    this.operatorName,
    this.sortOrder,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final operatorNameValue = operatorName;
    if (operatorNameValue != null) {
      map['operatorName'] = operatorNameValue;
    }
    final sortOrderValue = sortOrder;
    if (sortOrderValue != null) {
      map['sortOrder'] = sortOrderValue.value;
    }
    return map;
  }

  factory SortOptions.fromMap(Map<String, dynamic> map) {
    return SortOptions(
      operatorName:
          map['operatorName'] == null ? null : map['operatorName'] as String,
      sortOrder: map['sortOrder'] == null
          ? null
          : SortOptionsSortOrder.fromValue(map['sortOrder'] as String),
    );
  }
}
