// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the Azure Active Directory principal that can approve any just-in-time access requests by the principal defined in the EligibleAuthorization.
class EligibleApprover {
  /// The identifier of the Azure Active Directory principal.
  final pulumi.Input<String> principalId;
  /// The display name of the Azure Active Directory principal.
  final pulumi.Input<String>? principalIdDisplayName;

  /// Creates a new [EligibleApprover].
  /// [principalId] The identifier of the Azure Active Directory principal.
  /// [principalIdDisplayName] The display name of the Azure Active Directory principal.
  const EligibleApprover({
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
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      principalIdDisplayName: (() { final guardedValue = map['principalIdDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
