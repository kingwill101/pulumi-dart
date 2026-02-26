// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentKendraConfiguration {
  /// ARN of the Kendra index.
  final String kendraIndex;

  /// Query filter string for Kendra.
  final String? queryFilterString;

  /// Whether the query filter string is enabled.
  final bool? queryFilterStringEnabled;

  V2modelsIntentKendraConfiguration({
    required this.kendraIndex,
    this.queryFilterString,
    this.queryFilterStringEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kendraIndex'] = kendraIndex;
    final queryFilterStringValue = queryFilterString;
    if (queryFilterStringValue != null) {
      map['queryFilterString'] = queryFilterStringValue;
    }
    final queryFilterStringEnabledValue = queryFilterStringEnabled;
    if (queryFilterStringEnabledValue != null) {
      map['queryFilterStringEnabled'] = queryFilterStringEnabledValue;
    }
    return map;
  }

  factory V2modelsIntentKendraConfiguration.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentKendraConfiguration(
      kendraIndex: map['kendraIndex'] as String,
      queryFilterString: map['queryFilterString'] == null
          ? null
          : map['queryFilterString'] as String,
      queryFilterStringEnabled: map['queryFilterStringEnabled'] == null
          ? null
          : map['queryFilterStringEnabled'] as bool,
    );
  }
}
