// ignore_for_file: unused_element, unnecessary_cast


/// Gets or sets the high availability configuration.
class HighAvailabilityConfigurationResponse {
  /// The high availability type.
  final String highAvailabilityType;

  /// Creates a new [HighAvailabilityConfigurationResponse].
  /// [highAvailabilityType] The high availability type.
  HighAvailabilityConfigurationResponse({
    required this.highAvailabilityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'highAvailabilityType': highAvailabilityType,
    };
  }

  factory HighAvailabilityConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return HighAvailabilityConfigurationResponse(
      highAvailabilityType: map['highAvailabilityType'] as String,
    );
  }
}

