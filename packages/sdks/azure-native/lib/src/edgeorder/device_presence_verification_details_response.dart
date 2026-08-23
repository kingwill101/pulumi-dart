// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Proof of possession details.
class DevicePresenceVerificationDetailsResponse {
  /// Insights on current status.
  final pulumi.Input<String> message;
  /// Proof of possession status.
  final pulumi.Input<String> status;

  /// Creates a new [DevicePresenceVerificationDetailsResponse].
  /// [message] Insights on current status.
  /// [status] Proof of possession status.
  const DevicePresenceVerificationDetailsResponse({
    required this.message,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'status': status,
    };
  }

  factory DevicePresenceVerificationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DevicePresenceVerificationDetailsResponse(
      message: pulumi.Input.fromValue(map['message'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
