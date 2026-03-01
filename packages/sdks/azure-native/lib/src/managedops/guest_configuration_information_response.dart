// ignore_for_file: unused_element, unnecessary_cast


/// Azure Policy and Machine Configuration service information.
class GuestConfigurationInformationResponse {
  /// Indicates whether the service is enabled.
  final String enablementStatus;

  /// Creates a new [GuestConfigurationInformationResponse].
  /// [enablementStatus] Indicates whether the service is enabled.
  GuestConfigurationInformationResponse({
    required this.enablementStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablementStatus': enablementStatus,
    };
  }

  factory GuestConfigurationInformationResponse.fromMap(Map<String, dynamic> map) {
    return GuestConfigurationInformationResponse(
      enablementStatus: map['enablementStatus'] as String,
    );
  }
}

