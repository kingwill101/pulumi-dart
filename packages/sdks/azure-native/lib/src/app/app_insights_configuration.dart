// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of Application Insights
class AppInsightsConfiguration {
  /// Application Insights connection string
  final pulumi.Input<String>? connectionString;

  /// Creates a new [AppInsightsConfiguration].
  /// [connectionString] Application Insights connection string
  AppInsightsConfiguration({
    this.connectionString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
    };
  }

  factory AppInsightsConfiguration.fromMap(Map<String, dynamic> map) {
    return AppInsightsConfiguration(
      connectionString: map['connectionString'] == null ? null : (map['connectionString']! as String).input(),
    );
  }
}

