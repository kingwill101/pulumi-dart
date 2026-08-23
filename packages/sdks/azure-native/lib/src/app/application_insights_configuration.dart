// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Application Insights Configuration
class ApplicationInsightsConfiguration {
  /// The Application ID for the Application Insights resource
  final pulumi.Input<String>? appId;
  /// The connection string for the Application Insights resource
  final pulumi.Input<String>? connectionString;

  /// Creates a new [ApplicationInsightsConfiguration].
  /// [appId] The Application ID for the Application Insights resource
  /// [connectionString] The connection string for the Application Insights resource
  const ApplicationInsightsConfiguration({
    this.appId,
    this.connectionString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'connectionString': ?connectionString,
    };
  }

  factory ApplicationInsightsConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationInsightsConfiguration(
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
