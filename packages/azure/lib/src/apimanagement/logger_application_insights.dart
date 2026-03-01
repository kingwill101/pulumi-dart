// ignore_for_file: unused_element, unnecessary_cast


class LoggerApplicationInsights {
  /// The connection string of Application Insights.
  final String? connectionString;
  /// The instrumentation key used to push data to Application Insights.
  ///
  /// > **Note:** Either `connection_string` or `instrumentation_key` have to be specified.
  final String? instrumentationKey;

  /// Creates a new [LoggerApplicationInsights].
  /// [connectionString] The connection string of Application Insights.
  /// [instrumentationKey] The instrumentation key used to push data to Application Insights.
  LoggerApplicationInsights({
    this.connectionString,
    this.instrumentationKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'instrumentationKey': ?instrumentationKey,
    };
  }

  factory LoggerApplicationInsights.fromMap(Map<String, dynamic> map) {
    return LoggerApplicationInsights(
      connectionString: map['connectionString'] == null ? null : map['connectionString'] as String,
      instrumentationKey: map['instrumentationKey'] == null ? null : map['instrumentationKey'] as String,
    );
  }
}

