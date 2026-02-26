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

  GetAuthorizationTokenResult({
    required this.authorizationToken,
    required this.domain,
    required this.domainOwner,
    this.durationSeconds,
    required this.expiration,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizationToken'] = authorizationToken;
    map['domain'] = domain;
    map['domainOwner'] = domainOwner;
    final durationSecondsValue = durationSeconds;
    if (durationSecondsValue != null) {
      map['durationSeconds'] = durationSecondsValue;
    }
    map['expiration'] = expiration;
    map['id'] = id;
    map['region'] = region;
    return map;
  }

  factory GetAuthorizationTokenResult.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationTokenResult(
      authorizationToken: map['authorizationToken'] as String,
      domain: map['domain'] as String,
      domainOwner: map['domainOwner'] as String,
      durationSeconds:
          map['durationSeconds'] == null ? null : map['durationSeconds'] as int,
      expiration: map['expiration'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
