// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network settings for the project.
class ProjectNetworkSettingsResponse {
  /// Indicates whether pools in this Dev Center can use Microsoft Hosted Networks. Defaults to Enabled if not set.
  final pulumi.Input<String> microsoftHostedNetworkEnableStatus;

  /// Creates a new [ProjectNetworkSettingsResponse].
  /// [microsoftHostedNetworkEnableStatus] Indicates whether pools in this Dev Center can use Microsoft Hosted Networks. Defaults to Enabled if not set.
  const ProjectNetworkSettingsResponse({
    required this.microsoftHostedNetworkEnableStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'microsoftHostedNetworkEnableStatus': microsoftHostedNetworkEnableStatus,
    };
  }

  factory ProjectNetworkSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ProjectNetworkSettingsResponse(
      microsoftHostedNetworkEnableStatus: pulumi.Input.fromValue(map['microsoftHostedNetworkEnableStatus'] as String),
    );
  }
}
