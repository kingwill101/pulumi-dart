// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Log Analytics destination.
class LogAnalyticsDestinationResponse {
  /// A friendly name for the destination.
  /// This name should be unique across all destinations (regardless of type) within the data collection rule.
  final pulumi.Input<String?>? name;
  /// The Customer ID of the Log Analytics workspace.
  final pulumi.Input<String> workspaceId;
  /// The resource ID of the Log Analytics workspace.
  final pulumi.Input<String?>? workspaceResourceId;

  /// Creates a new [LogAnalyticsDestinationResponse].
  /// [name] A friendly name for the destination.
  /// [workspaceId] The Customer ID of the Log Analytics workspace.
  /// [workspaceResourceId] The resource ID of the Log Analytics workspace.
  const LogAnalyticsDestinationResponse({
    this.name,
    required this.workspaceId,
    this.workspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'workspaceId': workspaceId,
      'workspaceResourceId': ?workspaceResourceId,
    };
  }

  factory LogAnalyticsDestinationResponse.fromMap(Map<String, dynamic> map) {
    return LogAnalyticsDestinationResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
      workspaceResourceId: (() { final guardedValue = map['workspaceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
