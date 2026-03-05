// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The AssignmentPrincipal
class AssignmentPrincipalResponse {
  /// The principal id being assigned to.
  final pulumi.Input<String> principalId;
  /// Other metadata for the principal.
  final pulumi.Input<Map<String, String>>? principalMetadata;
  /// The Type of the principal ID.
  final pulumi.Input<String> principalType;

  /// Creates a new [AssignmentPrincipalResponse].
  /// [principalId] The principal id being assigned to.
  /// [principalMetadata] Other metadata for the principal.
  /// [principalType] The Type of the principal ID.
  AssignmentPrincipalResponse({
    required this.principalId,
    this.principalMetadata,
    required this.principalType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'principalMetadata': ?principalMetadata,
      'principalType': principalType,
    };
  }

  factory AssignmentPrincipalResponse.fromMap(Map<String, dynamic> map) {
    return AssignmentPrincipalResponse(
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      principalMetadata: (() { final guardedValue = map['principalMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      principalType: pulumi.Input.fromValue(map['principalType'] as String),
    );
  }
}

