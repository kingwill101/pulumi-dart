// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getToken.
class GetTokenResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String identifier;

  /// The generated token for use in subsequent verification steps.
  final String token;
  final String type;
  final String verificationMethod;

  GetTokenResult({
    required this.id,
    required this.identifier,
    required this.token,
    required this.type,
    required this.verificationMethod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['identifier'] = identifier;
    map['token'] = token;
    map['type'] = type;
    map['verificationMethod'] = verificationMethod;
    return map;
  }

  factory GetTokenResult.fromMap(Map<String, dynamic> map) {
    return GetTokenResult(
      id: map['id'] as String,
      identifier: map['identifier'] as String,
      token: map['token'] as String,
      type: map['type'] as String,
      verificationMethod: map['verificationMethod'] as String,
    );
  }
}
