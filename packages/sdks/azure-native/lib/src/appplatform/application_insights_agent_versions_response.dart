// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Application Insights agent versions properties payload
class ApplicationInsightsAgentVersionsResponse {
  /// Indicates the version of application insight java agent
  final pulumi.Input<String> java;

  /// Creates a new [ApplicationInsightsAgentVersionsResponse].
  /// [java] Indicates the version of application insight java agent
  ApplicationInsightsAgentVersionsResponse({
    required this.java,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'java': java,
    };
  }

  factory ApplicationInsightsAgentVersionsResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationInsightsAgentVersionsResponse(
      java: pulumi.Input.fromValue(map['java'] as String),
    );
  }
}

