// ignore_for_file: unused_element, unnecessary_cast

import 'binary_authorization_evaluation_mode.dart';

/// Configuration for Binary Authorization.
class BinaryAuthorization {
  /// Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
  final BinaryAuthorizationEvaluationMode? evaluationMode;

  /// Creates a new [BinaryAuthorization].
  /// [evaluationMode] Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
  BinaryAuthorization({this.evaluationMode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationMode': ?evaluationMode == null ? null : evaluationMode!.value,
    };
  }

  factory BinaryAuthorization.fromMap(Map<String, dynamic> map) {
    return BinaryAuthorization(
      evaluationMode: map['evaluationMode'] == null
          ? null
          : BinaryAuthorizationEvaluationMode.fromValue(
              map['evaluationMode'] as String,
            ),
    );
  }
}
