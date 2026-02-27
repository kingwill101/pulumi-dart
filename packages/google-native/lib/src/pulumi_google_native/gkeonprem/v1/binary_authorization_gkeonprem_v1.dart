// ignore_for_file: unused_element, unnecessary_cast

import 'binary_authorization_evaluation_mode_gkeonprem_v1.dart';

/// Configuration for Binary Authorization.
class BinaryAuthorizationGkeonpremV1 {
  /// Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
  final BinaryAuthorizationEvaluationModeGkeonpremV1? evaluationMode;

  BinaryAuthorizationGkeonpremV1({
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

  factory BinaryAuthorizationGkeonpremV1.fromMap(Map<String, dynamic> map) {
    return BinaryAuthorizationGkeonpremV1(
      evaluationMode: map['evaluationMode'] == null
          ? null
          : BinaryAuthorizationEvaluationModeGkeonpremV1.fromValue(
              map['evaluationMode'] as String),
    );
  }
}
