// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Update Manager service information.
class UpdateManagerInformationResponse {
  /// Indicates whether the service is enabled.
  final pulumi.Input<String> enablementStatus;

  /// Creates a new [UpdateManagerInformationResponse].
  /// [enablementStatus] Indicates whether the service is enabled.
  const UpdateManagerInformationResponse({
    required this.enablementStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablementStatus': enablementStatus,
    };
  }

  factory UpdateManagerInformationResponse.fromMap(Map<String, dynamic> map) {
    return UpdateManagerInformationResponse(
      enablementStatus: pulumi.Input.fromValue(map['enablementStatus'] as String),
    );
  }
}

