// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies Redeploy related Scheduled Event related configurations.
class UserInitiatedRedeployResponse {
  /// Specifies Redeploy Scheduled Event related configurations.
  final pulumi.Input<bool>? automaticallyApprove;

  /// Creates a new [UserInitiatedRedeployResponse].
  /// [automaticallyApprove] Specifies Redeploy Scheduled Event related configurations.
  UserInitiatedRedeployResponse({
    this.automaticallyApprove,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticallyApprove': ?automaticallyApprove,
    };
  }

  factory UserInitiatedRedeployResponse.fromMap(Map<String, dynamic> map) {
    return UserInitiatedRedeployResponse(
      automaticallyApprove: map['automaticallyApprove'] == null ? null : (map['automaticallyApprove']! as bool).input(),
    );
  }
}

