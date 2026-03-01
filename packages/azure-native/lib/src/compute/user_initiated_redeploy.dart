// ignore_for_file: unused_element, unnecessary_cast


/// Specifies Redeploy related Scheduled Event related configurations.
class UserInitiatedRedeploy {
  /// Specifies Redeploy Scheduled Event related configurations.
  final bool? automaticallyApprove;

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
      automaticallyApprove: map['automaticallyApprove'] == null ? null : map['automaticallyApprove'] as bool,
    );
  }
}

