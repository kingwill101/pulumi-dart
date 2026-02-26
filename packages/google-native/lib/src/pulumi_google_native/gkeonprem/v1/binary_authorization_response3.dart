// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for Binary Authorization.
class BinaryAuthorizationResponse3 {
  /// Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
  final String evaluationMode;

  BinaryAuthorizationResponse3({
    required this.evaluationMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['evaluationMode'] = evaluationMode;
    return map;
  }

  factory BinaryAuthorizationResponse3.fromMap(Map<String, dynamic> map) {
    return BinaryAuthorizationResponse3(
      evaluationMode: map['evaluationMode'] as String,
    );
  }
}
