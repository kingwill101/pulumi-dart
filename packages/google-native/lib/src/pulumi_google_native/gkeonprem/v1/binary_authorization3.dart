// ignore_for_file: unused_element, unnecessary_cast

import 'binary_authorization_evaluation_mode3.dart';

/// Configuration for Binary Authorization.
class BinaryAuthorization3 {
  /// Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
  final BinaryAuthorizationEvaluationMode3? evaluationMode;

  BinaryAuthorization3({
    this.evaluationMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final evaluationModeValue = evaluationMode;
    if (evaluationModeValue != null) {
      map['evaluationMode'] = evaluationModeValue.value;
    }
    return map;
  }

  factory BinaryAuthorization3.fromMap(Map<String, dynamic> map) {
    return BinaryAuthorization3(
      evaluationMode: map['evaluationMode'] == null
          ? null
          : BinaryAuthorizationEvaluationMode3.fromValue(
              map['evaluationMode'] as String),
    );
  }
}
