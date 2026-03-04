// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Health Alert Description
class HealthAlertResponse {
  /// Health Alert Id
  final pulumi.Input<String> id;

  /// Health Alert Issue
  final pulumi.Input<String> issue;

  /// Health Alert Last Detected DateTime
  final pulumi.Input<String> lastDetected;

  /// Health Alert Name
  final pulumi.Input<String> name;

  /// Health Alert Raised DateTime
  final pulumi.Input<String> raised;

  /// Health Alert TSG Link
  final pulumi.Input<String> resolutionUri;

  /// Health Alert Severity
  final pulumi.Input<String> severity;

  /// Creates a new [HealthAlertResponse].
  /// [id] Health Alert Id
  /// [issue] Health Alert Issue
  /// [lastDetected] Health Alert Last Detected DateTime
  /// [name] Health Alert Name
  /// [raised] Health Alert Raised DateTime
  /// [resolutionUri] Health Alert TSG Link
  /// [severity] Health Alert Severity
  HealthAlertResponse({
    required this.id,
    required this.issue,
    required this.lastDetected,
    required this.name,
    required this.raised,
    required this.resolutionUri,
    required this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'issue': issue,
      'lastDetected': lastDetected,
      'name': name,
      'raised': raised,
      'resolutionUri': resolutionUri,
      'severity': severity,
    };
  }

  factory HealthAlertResponse.fromMap(Map<String, dynamic> map) {
    return HealthAlertResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      issue: pulumi.Input.fromValue(map['issue'] as String),
      lastDetected: pulumi.Input.fromValue(map['lastDetected'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      raised: pulumi.Input.fromValue(map['raised'] as String),
      resolutionUri: pulumi.Input.fromValue(map['resolutionUri'] as String),
      severity: pulumi.Input.fromValue(map['severity'] as String),
    );
  }
}
