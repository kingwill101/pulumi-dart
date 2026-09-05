// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAuthorizationToken.
class GetAuthorizationTokenResult {
  /// Temporary authorization token.
  final String? authorizationToken;
  final String? domain;
  final String? domainOwner;
  final int? durationSeconds;
  /// Time in UTC RFC3339 format when the authorization token expires.
  final String? expiration;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;

  /// Creates a new [GetAuthorizationTokenResult].
  /// [authorizationToken] Temporary authorization token.
  /// [domain] Optional.
  /// [domainOwner] Optional.
  /// [durationSeconds] Optional.
  /// [expiration] Time in UTC RFC3339 format when the authorization token expires.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  const GetAuthorizationTokenResult({
    this.authorizationToken,
    this.domain,
    this.domainOwner,
    this.durationSeconds,
    this.expiration,
    this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationToken': ?authorizationToken,
      'domain': ?domain,
      'domainOwner': ?domainOwner,
      'durationSeconds': ?durationSeconds,
      'expiration': ?expiration,
      'id': ?id,
      'region': ?region,
    };
  }

  factory GetAuthorizationTokenResult.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationTokenResult(
      authorizationToken: (() { final guardedValue = map['authorizationToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainOwner: (() { final guardedValue = map['domainOwner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      durationSeconds: (() { final guardedValue = map['durationSeconds']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
