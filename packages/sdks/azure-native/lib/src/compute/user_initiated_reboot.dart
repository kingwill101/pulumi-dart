// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies Reboot related Scheduled Event related configurations.
class UserInitiatedReboot {
  /// Specifies Reboot Scheduled Event related configurations.
  final pulumi.Input<bool>? automaticallyApprove;

  /// Creates a new [UserInitiatedReboot].
  /// [automaticallyApprove] Specifies Reboot Scheduled Event related configurations.
  UserInitiatedReboot({
    this.automaticallyApprove,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticallyApprove': ?automaticallyApprove,
    };
  }

  factory UserInitiatedReboot.fromMap(Map<String, dynamic> map) {
    return UserInitiatedReboot(
      automaticallyApprove: map['automaticallyApprove'] == null ? null : (map['automaticallyApprove'] as bool).input(),
    );
  }
}

