// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Application Insights key
class ApplicationInsightsResponse {
  /// Resource id for Application Insights
  final pulumi.Input<String>? id;
  /// Application Insights key
  final pulumi.Input<String>? key;

  /// Creates a new [ApplicationInsightsResponse].
  /// [id] Resource id for Application Insights
  /// [key] Application Insights key
  const ApplicationInsightsResponse({
    this.id,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'key': ?key,
    };
  }

  factory ApplicationInsightsResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationInsightsResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

