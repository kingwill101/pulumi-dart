// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAccountJwt.
class GetAccountJwtResult {
  final List<String>? delegates;
  final int? expiresIn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The signed JWT containing the JWT Claims Set from the `payload`.
  final String jwt;
  final String payload;
  final String targetServiceAccount;

  /// Creates a new [GetAccountJwtResult].
  /// [delegates] Optional.
  /// [expiresIn] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [jwt] The signed JWT containing the JWT Claims Set from the `payload`.
  /// [payload] Required.
  /// [targetServiceAccount] Required.
  GetAccountJwtResult({
    this.delegates,
    this.expiresIn,
    required this.id,
    required this.jwt,
    required this.payload,
    required this.targetServiceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegates': ?delegates,
      'expiresIn': ?expiresIn,
      'id': id,
      'jwt': jwt,
      'payload': payload,
      'targetServiceAccount': targetServiceAccount,
    };
  }

  factory GetAccountJwtResult.fromMap(Map<String, dynamic> map) {
    return GetAccountJwtResult(
      delegates: map['delegates'] == null
          ? null
          : (map['delegates'] as List).cast<String>(),
      expiresIn: map['expiresIn'] == null ? null : map['expiresIn'] as int,
      id: map['id'] as String,
      jwt: map['jwt'] as String,
      payload: map['payload'] as String,
      targetServiceAccount: map['targetServiceAccount'] as String,
    );
  }
}
