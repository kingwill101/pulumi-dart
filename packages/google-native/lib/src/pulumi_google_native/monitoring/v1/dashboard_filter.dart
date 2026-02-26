// ignore_for_file: unused_element, unnecessary_cast

import 'dashboard_filter_filter_type.dart';

/// A filter to reduce the amount of data charted in relevant widgets.
class DashboardFilter {
  /// The specified filter type
  final DashboardFilterFilterType? filterType;

  /// The key for the label
  final String labelKey;

  /// A variable-length string value.
  final String? stringValue;

  /// The placeholder text that can be referenced in a filter string or MQL query. If omitted, the dashboard filter will be applied to all relevant widgets in the dashboard.
  final String? templateVariable;

  DashboardFilter({
    this.filterType,
    required this.labelKey,
    this.stringValue,
    this.templateVariable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterTypeValue = filterType;
    if (filterTypeValue != null) {
      map['filterType'] = filterTypeValue.value;
    }
    map['labelKey'] = labelKey;
    final stringValueValue = stringValue;
    if (stringValueValue != null) {
      map['stringValue'] = stringValueValue;
    }
    final templateVariableValue = templateVariable;
    if (templateVariableValue != null) {
      map['templateVariable'] = templateVariableValue;
    }
    return map;
  }

  factory DashboardFilter.fromMap(Map<String, dynamic> map) {
    return DashboardFilter(
      filterType: map['filterType'] == null
          ? null
          : DashboardFilterFilterType.fromValue(map['filterType'] as String),
      labelKey: map['labelKey'] as String,
      stringValue:
          map['stringValue'] == null ? null : map['stringValue'] as String,
      templateVariable: map['templateVariable'] == null
          ? null
          : map['templateVariable'] as String,
    );
  }
}
