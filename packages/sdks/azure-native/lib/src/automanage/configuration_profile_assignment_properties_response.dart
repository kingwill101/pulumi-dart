// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Automanage configuration profile assignment properties.
class ConfigurationProfileAssignmentPropertiesResponse {
  /// The Automanage configurationProfile ARM Resource URI.
  final pulumi.Input<String>? configurationProfile;
  /// The status of onboarding, which only appears in the response.
  final pulumi.Input<String> status;
  /// The target VM resource URI
  final pulumi.Input<String> targetId;

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
      configurationProfile: (() { final guardedValue = map['configurationProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
      targetId: pulumi.Input.fromValue(map['targetId'] as String),
    );
  }
}

