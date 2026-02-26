// ignore_for_file: unused_element, unnecessary_cast

/// A filter to reduce the amount of data charted in relevant widgets.
class DashboardFilterResponse {
  /// The specified filter type
  final String filterType;

  /// The key for the label
  final String labelKey;

  /// A variable-length string value.
  final String stringValue;

  /// The placeholder text that can be referenced in a filter string or MQL query. If omitted, the dashboard filter will be applied to all relevant widgets in the dashboard.
  final String templateVariable;

  DashboardFilterResponse({
    required this.filterType,
    required this.labelKey,
    required this.stringValue,
    required this.templateVariable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filterType'] = filterType;
    map['labelKey'] = labelKey;
    map['stringValue'] = stringValue;
    map['templateVariable'] = templateVariable;
    return map;
  }

  factory DashboardFilterResponse.fromMap(Map<String, dynamic> map) {
    return DashboardFilterResponse(
      filterType: map['filterType'] as String,
      labelKey: map['labelKey'] as String,
      stringValue: map['stringValue'] as String,
      templateVariable: map['templateVariable'] as String,
    );
  }
}
