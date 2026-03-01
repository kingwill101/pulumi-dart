// ignore_for_file: unused_element, unnecessary_cast


/// Configuration of Application Insights
class AppInsightsConfigurationResponse {
  /// Application Insights connection string
  final String? connectionString;

  /// Creates a new [AppInsightsConfigurationResponse].
  /// [connectionString] Application Insights connection string
  AppInsightsConfigurationResponse({
    this.connectionString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
    };
  }

  factory AppInsightsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AppInsightsConfigurationResponse(
      connectionString: map['connectionString'] == null ? null : map['connectionString'] as String,
    );
  }
}

