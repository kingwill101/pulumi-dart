// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies Redeploy related Scheduled Event related configurations.
class UserInitiatedRedeploy {
  /// Specifies Redeploy Scheduled Event related configurations.
  final pulumi.Input<bool>? automaticallyApprove;

  /// Creates a new [UserInitiatedRedeploy].
  /// [automaticallyApprove] Specifies Redeploy Scheduled Event related configurations.
  UserInitiatedRedeploy({
    this.automaticallyApprove,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticallyApprove': ?automaticallyApprove,
    };
  }

  factory UserInitiatedRedeploy.fromMap(Map<String, dynamic> map) {
    return UserInitiatedRedeploy(
      automaticallyApprove: (() { final guardedValue = map['automaticallyApprove']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

