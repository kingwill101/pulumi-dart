// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'composite_filter_logic_operator.dart';
import 'filter.dart';

class CompositeFilter {
  /// The logic operator of the sub filter.
  final CompositeFilterLogicOperator? logicOperator;

  /// Sub filters.
  final List<Filter>? subFilters;

  CompositeFilter({
    this.logicOperator,
    this.subFilters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final logicOperatorValue = logicOperator;
    if (logicOperatorValue != null) {
      map['logicOperator'] = logicOperatorValue.value;
    }
    final subFiltersValue = subFilters;
    if (subFiltersValue != null) {
      map['subFilters'] = Input.encodeList<Filter, Map<String, dynamic>>(
          subFiltersValue, (value) => value.toMap());
    }
    return map;
  }

  factory CompositeFilter.fromMap(Map<String, dynamic> map) {
    return CompositeFilter(
      logicOperator: map['logicOperator'] == null
          ? null
          : CompositeFilterLogicOperator.fromValue(
              map['logicOperator'] as String),
      subFilters: map['subFilters'] == null
          ? null
          : Input.decodeList<Filter>(
              map['subFilters'],
              (value) =>
                  Filter.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
