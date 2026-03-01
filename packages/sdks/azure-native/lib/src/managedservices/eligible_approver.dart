// ignore_for_file: unused_element, unnecessary_cast


/// Defines the Azure Active Directory principal that can approve any just-in-time access requests by the principal defined in the EligibleAuthorization.
class EligibleApprover {
  /// The identifier of the Azure Active Directory principal.
  final String principalId;
  /// The display name of the Azure Active Directory principal.
  final String? principalIdDisplayName;

  /// Creates a new [EligibleApprover].
  /// [principalId] The identifier of the Azure Active Directory principal.
  /// [principalIdDisplayName] The display name of the Azure Active Directory principal.
  EligibleApprover({
    required this.principalId,
    this.principalIdDisplayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'principalIdDisplayName': ?principalIdDisplayName,
    };
  }

  factory EligibleApprover.fromMap(Map<String, dynamic> map) {
    return EligibleApprover(
      principalId: map['principalId'] as String,
      principalIdDisplayName: map['principalIdDisplayName'] == null ? null : map['principalIdDisplayName'] as String,
    );
  }
}

