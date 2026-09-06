// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies Reboot related Scheduled Event related configurations.
class UserInitiatedRebootResponse {
  /// Specifies Reboot Scheduled Event related configurations.
  final pulumi.Input<bool?>? automaticallyApprove;

  /// Creates a new [UserInitiatedRebootResponse].
  /// [automaticallyApprove] Specifies Reboot Scheduled Event related configurations.
  const UserInitiatedRebootResponse({
    this.automaticallyApprove,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticallyApprove': ?automaticallyApprove,
    };
  }

  factory UserInitiatedRebootResponse.fromMap(Map<String, dynamic> map) {
    return UserInitiatedRebootResponse(
      automaticallyApprove: (() { final guardedValue = map['automaticallyApprove']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
