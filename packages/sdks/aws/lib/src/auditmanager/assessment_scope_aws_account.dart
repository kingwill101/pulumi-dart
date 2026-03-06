// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AssessmentScopeAwsAccount {
  /// Identifier for the Amazon Web Services account.
  final pulumi.Input<String> id;

  /// Creates a new [AssessmentScopeAwsAccount].
  /// [id] Identifier for the Amazon Web Services account.
  const AssessmentScopeAwsAccount({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AssessmentScopeAwsAccount.fromMap(Map<String, dynamic> map) {
    return AssessmentScopeAwsAccount(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

