// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for Binary Authorization.
class BinaryAuthorizationResponseGkeonpremV1 {
  /// Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
  final String evaluationMode;

  BinaryAuthorizationResponseGkeonpremV1({
    required this.evaluationMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['evaluationMode'] = evaluationMode;
    return map;
  }

  factory BinaryAuthorizationResponseGkeonpremV1.fromMap(
      Map<String, dynamic> map) {
    return BinaryAuthorizationResponseGkeonpremV1(
      evaluationMode: map['evaluationMode'] as String,
    );
  }
}
