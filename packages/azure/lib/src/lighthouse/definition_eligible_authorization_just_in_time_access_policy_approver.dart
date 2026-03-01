// ignore_for_file: unused_element, unnecessary_cast


class DefinitionEligibleAuthorizationJustInTimeAccessPolicyApprover {
  /// The display name of the Azure Active Directory Principal for the approver.
  final String? principalDisplayName;
  /// The Principal ID of the Azure Active Directory principal for the approver.
  final String principalId;

  /// Creates a new [DefinitionEligibleAuthorizationJustInTimeAccessPolicyApprover].
  /// [principalDisplayName] The display name of the Azure Active Directory Principal for the approver.
  /// [principalId] The Principal ID of the Azure Active Directory principal for the approver.
  DefinitionEligibleAuthorizationJustInTimeAccessPolicyApprover({
    this.principalDisplayName,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalDisplayName': ?principalDisplayName,
      'principalId': principalId,
    };
  }

  factory DefinitionEligibleAuthorizationJustInTimeAccessPolicyApprover.fromMap(Map<String, dynamic> map) {
    return DefinitionEligibleAuthorizationJustInTimeAccessPolicyApprover(
      principalDisplayName: map['principalDisplayName'] == null ? null : map['principalDisplayName'] as String,
      principalId: map['principalId'] as String,
    );
  }
}

