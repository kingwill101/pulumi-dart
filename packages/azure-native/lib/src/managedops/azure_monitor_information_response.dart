// ignore_for_file: unused_element, unnecessary_cast


/// Azure Monitor Insights service information.
class AzureMonitorInformationResponse {
  /// ID of Data Collection Rule (DCR) associated with this service.
  final String dcrId;
  /// Indicates whether the service is enabled.
  final String enablementStatus;

  /// Creates a new [AzureMonitorInformationResponse].
  /// [dcrId] ID of Data Collection Rule (DCR) associated with this service.
  /// [enablementStatus] Indicates whether the service is enabled.
  AzureMonitorInformationResponse({
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
      dcrId: map['dcrId'] as String,
      enablementStatus: map['enablementStatus'] as String,
    );
  }
}

