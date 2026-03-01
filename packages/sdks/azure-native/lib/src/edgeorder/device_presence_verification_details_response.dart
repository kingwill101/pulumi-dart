// ignore_for_file: unused_element, unnecessary_cast


/// Proof of possession details.
class DevicePresenceVerificationDetailsResponse {
  /// Insights on current status.
  final String message;
  /// Proof of possession status.
  final String status;

  /// Creates a new [DevicePresenceVerificationDetailsResponse].
  /// [message] Insights on current status.
  /// [status] Proof of possession status.
  DevicePresenceVerificationDetailsResponse({
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
      message: map['message'] as String,
      status: map['status'] as String,
    );
  }
}

