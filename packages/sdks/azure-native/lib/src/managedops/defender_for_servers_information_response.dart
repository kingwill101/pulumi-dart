// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defender for Servers service information.
class DefenderForServersInformationResponse {
  /// Indicates whether the service is enabled.
  final pulumi.Input<String> enablementStatus;

  /// Creates a new [DefenderForServersInformationResponse].
  /// [enablementStatus] Indicates whether the service is enabled.
  const DefenderForServersInformationResponse({
    required this.enablementStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablementStatus': enablementStatus,
    };
  }

  factory DefenderForServersInformationResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForServersInformationResponse(
      enablementStatus: pulumi.Input.fromValue(map['enablementStatus'] as String),
    );
  }
}
