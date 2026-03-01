// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentKendraConfiguration {
  /// ARN of the Kendra index.
  final String kendraIndex;

  /// Query filter string for Kendra.
  final String? queryFilterString;

  /// Whether the query filter string is enabled.
  final bool? queryFilterStringEnabled;

  /// Creates a new [V2modelsIntentKendraConfiguration].
  /// [kendraIndex] ARN of the Kendra index.
  /// [queryFilterString] Query filter string for Kendra.
  /// [queryFilterStringEnabled] Whether the query filter string is enabled.
  V2modelsIntentKendraConfiguration({
    required this.kendraIndex,
    this.queryFilterString,
    this.queryFilterStringEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kendraIndex': kendraIndex,
      'queryFilterString': ?queryFilterString,
      'queryFilterStringEnabled': ?queryFilterStringEnabled,
    };
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
