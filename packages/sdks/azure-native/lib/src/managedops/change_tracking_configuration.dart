// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the Change Tracking and Inventory service.
class ChangeTrackingConfiguration {
  /// Log analytics workspace resource ID used by the service.
  final pulumi.Input<String> logAnalyticsWorkspaceId;

  /// Creates a new [ChangeTrackingConfiguration].
  /// [logAnalyticsWorkspaceId] Log analytics workspace resource ID used by the service.
  const ChangeTrackingConfiguration({
    required this.logAnalyticsWorkspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
    };
  }

  factory ChangeTrackingConfiguration.fromMap(Map<String, dynamic> map) {
    return ChangeTrackingConfiguration(
      logAnalyticsWorkspaceId: pulumi.Input.fromValue(map['logAnalyticsWorkspaceId'] as String),
    );
  }
}
