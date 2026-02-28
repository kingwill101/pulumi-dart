// ignore_for_file: unused_element, unnecessary_cast

class AssessmentScopeAwsAccount {
  /// Identifier for the Amazon Web Services account.
  final String id;

  /// Creates a new [AssessmentScopeAwsAccount].
  /// [id] Identifier for the Amazon Web Services account.
  AssessmentScopeAwsAccount({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    return map;
  }

  factory AssessmentScopeAwsAccount.fromMap(Map<String, dynamic> map) {
    return AssessmentScopeAwsAccount(
      id: map['id'] as String,
    );
  }
}
