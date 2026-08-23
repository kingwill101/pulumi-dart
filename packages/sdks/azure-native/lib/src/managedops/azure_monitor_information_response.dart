// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Monitor Insights service information.
class AzureMonitorInformationResponse {
  /// ID of Data Collection Rule (DCR) associated with this service.
  final pulumi.Input<String> dcrId;
  /// Indicates whether the service is enabled.
  final pulumi.Input<String> enablementStatus;

  /// Creates a new [AzureMonitorInformationResponse].
  /// [dcrId] ID of Data Collection Rule (DCR) associated with this service.
  /// [enablementStatus] Indicates whether the service is enabled.
  const AzureMonitorInformationResponse({
    required this.dcrId,
    required this.enablementStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dcrId': dcrId,
      'enablementStatus': enablementStatus,
    };
  }

  factory AzureMonitorInformationResponse.fromMap(Map<String, dynamic> map) {
    return AzureMonitorInformationResponse(
      dcrId: pulumi.Input.fromValue(map['dcrId'] as String),
      enablementStatus: pulumi.Input.fromValue(map['enablementStatus'] as String),
    );
  }
}
