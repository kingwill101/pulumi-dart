// ignore_for_file: unused_element, unnecessary_cast


/// Network settings for the project.
class ProjectNetworkSettingsResponse {
  /// Indicates whether pools in this Dev Center can use Microsoft Hosted Networks. Defaults to Enabled if not set.
  final String microsoftHostedNetworkEnableStatus;

  /// Creates a new [ProjectNetworkSettingsResponse].
  /// [microsoftHostedNetworkEnableStatus] Indicates whether pools in this Dev Center can use Microsoft Hosted Networks. Defaults to Enabled if not set.
  ProjectNetworkSettingsResponse({
    required this.microsoftHostedNetworkEnableStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'microsoftHostedNetworkEnableStatus': microsoftHostedNetworkEnableStatus,
    };
  }

  factory ProjectNetworkSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ProjectNetworkSettingsResponse(
      microsoftHostedNetworkEnableStatus: map['microsoftHostedNetworkEnableStatus'] as String,
    );
  }
}

