// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for the Change Tracking and Inventory service.
class ChangeTrackingConfiguration {
  /// Log analytics workspace resource ID used by the service.
  final String logAnalyticsWorkspaceId;

  /// Creates a new [ChangeTrackingConfiguration].
  /// [logAnalyticsWorkspaceId] Log analytics workspace resource ID used by the service.
  ChangeTrackingConfiguration({
    required this.logAnalyticsWorkspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
    };
  }

  factory ChangeTrackingConfiguration.fromMap(Map<String, dynamic> map) {
    return ChangeTrackingConfiguration(
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] as String,
    );
  }
}

