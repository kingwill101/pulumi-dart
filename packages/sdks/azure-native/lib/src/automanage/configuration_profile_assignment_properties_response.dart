// ignore_for_file: unused_element, unnecessary_cast


/// Automanage configuration profile assignment properties.
class ConfigurationProfileAssignmentPropertiesResponse {
  /// The Automanage configurationProfile ARM Resource URI.
  final String? configurationProfile;
  /// The status of onboarding, which only appears in the response.
  final String status;
  /// The target VM resource URI
  final String targetId;

  /// Creates a new [ConfigurationProfileAssignmentPropertiesResponse].
  /// [configurationProfile] The Automanage configurationProfile ARM Resource URI.
  /// [status] The status of onboarding, which only appears in the response.
  /// [targetId] The target VM resource URI
  ConfigurationProfileAssignmentPropertiesResponse({
    this.configurationProfile,
    required this.status,
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationProfile': ?configurationProfile,
      'status': status,
      'targetId': targetId,
    };
  }

  factory ConfigurationProfileAssignmentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationProfileAssignmentPropertiesResponse(
      configurationProfile: map['configurationProfile'] == null ? null : map['configurationProfile'] as String,
      status: map['status'] as String,
      targetId: map['targetId'] as String,
    );
  }
}

