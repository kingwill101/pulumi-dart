// ignore_for_file: unused_element, unnecessary_cast


/// Azure Update Manager service information.
class UpdateManagerInformationResponse {
  /// Indicates whether the service is enabled.
  final String enablementStatus;

  /// Creates a new [UpdateManagerInformationResponse].
  /// [enablementStatus] Indicates whether the service is enabled.
  UpdateManagerInformationResponse({
    required this.enablementStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablementStatus': enablementStatus,
    };
  }

  factory UpdateManagerInformationResponse.fromMap(Map<String, dynamic> map) {
    return UpdateManagerInformationResponse(
      enablementStatus: map['enablementStatus'] as String,
    );
  }
}

