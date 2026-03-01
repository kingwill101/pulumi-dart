// ignore_for_file: unused_element, unnecessary_cast


/// Specifies Reboot related Scheduled Event related configurations.
class UserInitiatedRebootResponse {
  /// Specifies Reboot Scheduled Event related configurations.
  final bool? automaticallyApprove;

  /// Creates a new [UserInitiatedRebootResponse].
  /// [automaticallyApprove] Specifies Reboot Scheduled Event related configurations.
  UserInitiatedRebootResponse({
    this.automaticallyApprove,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticallyApprove': ?automaticallyApprove,
    };
  }

  factory UserInitiatedRebootResponse.fromMap(Map<String, dynamic> map) {
    return UserInitiatedRebootResponse(
      automaticallyApprove: map['automaticallyApprove'] == null ? null : map['automaticallyApprove'] as bool,
    );
  }
}

