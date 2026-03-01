// ignore_for_file: unused_element, unnecessary_cast


/// Change Tracking and Inventory service information.
class ChangeTrackingInformationResponse {
  /// ID of Data Collection Rule (DCR) associated with this service.
  final String dcrId;
  /// Indicates whether the service is enabled.
  final String enablementStatus;

  /// Creates a new [ChangeTrackingInformationResponse].
  /// [dcrId] ID of Data Collection Rule (DCR) associated with this service.
  /// [enablementStatus] Indicates whether the service is enabled.
  ChangeTrackingInformationResponse({
    required this.dcrId,
    required this.enablementStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dcrId': dcrId,
      'enablementStatus': enablementStatus,
    };
  }

  factory ChangeTrackingInformationResponse.fromMap(Map<String, dynamic> map) {
    return ChangeTrackingInformationResponse(
      dcrId: map['dcrId'] as String,
      enablementStatus: map['enablementStatus'] as String,
    );
  }
}

