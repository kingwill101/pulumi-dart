// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The AssignmentPrincipal
class AssignmentPrincipal {
  /// The principal id being assigned to.
  final pulumi.Input<String> principalId;
  /// Other metadata for the principal.
  final pulumi.Input<Map<String, String>>? principalMetadata;
  /// The Type of the principal ID.
  final pulumi.Input<String> principalType;

  /// Creates a new [AssignmentPrincipal].
  /// [principalId] The principal id being assigned to.
  /// [principalMetadata] Other metadata for the principal.
  /// [principalType] The Type of the principal ID.
  AssignmentPrincipal({
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

  factory AssignmentPrincipal.fromMap(Map<String, dynamic> map) {
    return AssignmentPrincipal(
      principalId: (map['principalId'] as String).input(),
      principalMetadata: map['principalMetadata'] == null ? null : ((map['principalMetadata']! as Map).cast<String, String>()).input(),
      principalType: (map['principalType'] as String).input(),
    );
  }
}

