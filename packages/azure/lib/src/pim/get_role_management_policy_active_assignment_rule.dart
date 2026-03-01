// ignore_for_file: unused_element, unnecessary_cast


class GetRoleManagementPolicyActiveAssignmentRule {
  /// (Boolean) Must an assignment have an expiry date.
  final bool expirationRequired;
  /// (String) The maximum length of time an assignment can be valid, as an ISO8601 duration.
  final String expireAfter;
  /// (Boolean) Is a justification required to create new assignments.
  final bool requireJustification;
  /// (Boolean) Is multi-factor authentication required to create new assignments.
  final bool requireMultifactorAuthentication;
  /// (Boolean) Is ticket information required to create new assignments.
  final bool requireTicketInfo;

  /// Creates a new [GetRoleManagementPolicyActiveAssignmentRule].
  /// [expirationRequired] (Boolean) Must an assignment have an expiry date.
  /// [expireAfter] (String) The maximum length of time an assignment can be valid, as an ISO8601 duration.
  /// [requireJustification] (Boolean) Is a justification required to create new assignments.
  /// [requireMultifactorAuthentication] (Boolean) Is multi-factor authentication required to create new assignments.
  /// [requireTicketInfo] (Boolean) Is ticket information required to create new assignments.
  GetRoleManagementPolicyActiveAssignmentRule({
    required this.expirationRequired,
    required this.expireAfter,
    required this.requireJustification,
    required this.requireMultifactorAuthentication,
    required this.requireTicketInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationRequired': expirationRequired,
      'expireAfter': expireAfter,
      'requireJustification': requireJustification,
      'requireMultifactorAuthentication': requireMultifactorAuthentication,
      'requireTicketInfo': requireTicketInfo,
    };
  }

  factory GetRoleManagementPolicyActiveAssignmentRule.fromMap(Map<String, dynamic> map) {
    return GetRoleManagementPolicyActiveAssignmentRule(
      expirationRequired: map['expirationRequired'] as bool,
      expireAfter: map['expireAfter'] as String,
      requireJustification: map['requireJustification'] as bool,
      requireMultifactorAuthentication: map['requireMultifactorAuthentication'] as bool,
      requireTicketInfo: map['requireTicketInfo'] as bool,
    );
  }
}

