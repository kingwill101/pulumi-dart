// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for Binary Authorization.
class BinaryAuthorizationResponse {
  /// This field is deprecated. Leave this unset and instead configure BinaryAuthorization using evaluation_mode. If evaluation_mode is set to anything other than EVALUATION_MODE_UNSPECIFIED, this field is ignored.
  final bool enabled;

  /// Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
  final String evaluationMode;

  /// Creates a new [BinaryAuthorizationResponse].
  /// [enabled] This field is deprecated. Leave this unset and instead configure BinaryAuthorization using evaluation_mode. If evaluation_mode is set to anything other than EVALUATION_MODE_UNSPECIFIED, this field is ignored.
  /// [evaluationMode] Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
  BinaryAuthorizationResponse({
    required this.enabled,
    required this.evaluationMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['evaluationMode'] = evaluationMode;
    return map;
  }

  factory BinaryAuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return BinaryAuthorizationResponse(
      enabled: map['enabled'] as bool,
      evaluationMode: map['evaluationMode'] as String,
    );
  }
}
