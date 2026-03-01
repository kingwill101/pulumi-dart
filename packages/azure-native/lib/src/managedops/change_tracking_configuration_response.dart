// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for the Change Tracking and Inventory service.
class ChangeTrackingConfigurationResponse {
  /// Log analytics workspace resource ID used by the service.
  final String logAnalyticsWorkspaceId;

  /// Creates a new [ChangeTrackingConfigurationResponse].
  /// [logAnalyticsWorkspaceId] Log analytics workspace resource ID used by the service.
  ChangeTrackingConfigurationResponse({
    required this.logAnalyticsWorkspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
    };
  }

  factory ChangeTrackingConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ChangeTrackingConfigurationResponse(
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] as String,
    );
  }
}

