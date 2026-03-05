// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defender Cloud Security Posture Management (CSPM) service information.
class DefenderCspmInformationResponse {
  /// Indicates whether the service is enabled.
  final pulumi.Input<String> enablementStatus;

  /// Creates a new [DefenderCspmInformationResponse].
  /// [enablementStatus] Indicates whether the service is enabled.
  DefenderCspmInformationResponse({
    required this.enablementStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablementStatus': enablementStatus,
    };
  }

  factory DefenderCspmInformationResponse.fromMap(Map<String, dynamic> map) {
    return DefenderCspmInformationResponse(
      enablementStatus: pulumi.Input.fromValue(map['enablementStatus'] as String),
    );
  }
}

