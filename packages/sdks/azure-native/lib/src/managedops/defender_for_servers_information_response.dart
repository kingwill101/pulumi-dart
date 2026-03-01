// ignore_for_file: unused_element, unnecessary_cast


/// Defender for Servers service information.
class DefenderForServersInformationResponse {
  /// Indicates whether the service is enabled.
  final String enablementStatus;

  /// Creates a new [DefenderForServersInformationResponse].
  /// [enablementStatus] Indicates whether the service is enabled.
  DefenderForServersInformationResponse({
    required this.enablementStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablementStatus': enablementStatus,
    };
  }

  factory DefenderForServersInformationResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForServersInformationResponse(
      enablementStatus: map['enablementStatus'] as String,
    );
  }
}

