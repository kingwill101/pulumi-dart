// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAuthorizationToken.
class GetAuthorizationTokenResult {
  /// Temporary authorization token.
  final String authorizationToken;
  final String domain;
  final String domainOwner;
  final int? durationSeconds;
  /// Time in UTC RFC3339 format when the authorization token expires.
  final String expiration;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Creates a new [GetAuthorizationTokenResult].
  /// [authorizationToken] Temporary authorization token.
  /// [domain] Required.
  /// [domainOwner] Required.
  /// [durationSeconds] Optional.
  /// [expiration] Time in UTC RFC3339 format when the authorization token expires.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  const GetAuthorizationTokenResult({
    required this.authorizationToken,
    required this.domain,
    required this.domainOwner,
    this.durationSeconds,
    required this.expiration,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationToken': authorizationToken,
      'domain': domain,
      'domainOwner': domainOwner,
      'durationSeconds': ?durationSeconds,
      'expiration': expiration,
      'id': id,
      'region': region,
    };
  }

  factory GetAuthorizationTokenResult.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationTokenResult(
      authorizationToken: map['authorizationToken'] as String,
      domain: map['domain'] as String,
      domainOwner: map['domainOwner'] as String,
      durationSeconds: (() { final guardedValue = map['durationSeconds']; if (guardedValue == null) return null; return guardedValue as int; })(),
      expiration: map['expiration'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}

