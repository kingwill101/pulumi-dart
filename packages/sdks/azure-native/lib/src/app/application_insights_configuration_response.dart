// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Application Insights Configuration
class ApplicationInsightsConfigurationResponse {
  /// The Application ID for the Application Insights resource
  final pulumi.Input<String>? appId;
  /// The connection string for the Application Insights resource
  final pulumi.Input<String>? connectionString;

  /// Creates a new [ApplicationInsightsConfigurationResponse].
  /// [appId] The Application ID for the Application Insights resource
  /// [connectionString] The connection string for the Application Insights resource
  const ApplicationInsightsConfigurationResponse({
    this.appId,
    this.connectionString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'connectionString': ?connectionString,
    };
  }

  factory ApplicationInsightsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationInsightsConfigurationResponse(
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
