// ignore_for_file: unused_element, unnecessary_cast

/// Advanced API Security provides security profile that scores the following categories.
class GoogleCloudApigeeV1ProfileConfigCategory {
  /// Checks for abuse, which includes any requests sent to the API for purposes other than what it is intended for, such as high volumes of requests, data scraping, and abuse related to authorization.
  final Map<String, dynamic>? abuse;

  /// Checks to see if you have an authorization policy in place.
  final Map<String, dynamic>? authorization;

  /// Checks to see if you have CORS policy in place.
  final Map<String, dynamic>? cors;

  /// Checks to see if you have a mediation policy in place.
  final Map<String, dynamic>? mediation;

  /// Checks to see if you have configured mTLS for the target server.
  final Map<String, dynamic>? mtls;

  /// Checks to see if you have a threat protection policy in place.
  final Map<String, dynamic>? threat;

  /// Creates a new [GoogleCloudApigeeV1ProfileConfigCategory].
  /// [abuse] Checks for abuse, which includes any requests sent to the API for purposes other than what it is intended for, such as high volumes of requests, data scraping, and abuse related to authorization.
  /// [authorization] Checks to see if you have an authorization policy in place.
  /// [cors] Checks to see if you have CORS policy in place.
  /// [mediation] Checks to see if you have a mediation policy in place.
  /// [mtls] Checks to see if you have configured mTLS for the target server.
  /// [threat] Checks to see if you have a threat protection policy in place.
  GoogleCloudApigeeV1ProfileConfigCategory({
    this.abuse,
    this.authorization,
    this.cors,
    this.mediation,
    this.mtls,
    this.threat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final abuseValue = abuse;
    if (abuseValue != null) {
      map['abuse'] = abuseValue;
    }
    final authorizationValue = authorization;
    if (authorizationValue != null) {
      map['authorization'] = authorizationValue;
    }
    final corsValue = cors;
    if (corsValue != null) {
      map['cors'] = corsValue;
    }
    final mediationValue = mediation;
    if (mediationValue != null) {
      map['mediation'] = mediationValue;
    }
    final mtlsValue = mtls;
    if (mtlsValue != null) {
      map['mtls'] = mtlsValue;
    }
    final threatValue = threat;
    if (threatValue != null) {
      map['threat'] = threatValue;
    }
    return map;
  }

  factory GoogleCloudApigeeV1ProfileConfigCategory.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1ProfileConfigCategory(
      abuse: map['abuse'] == null
          ? null
          : (map['abuse'] as Map).cast<String, dynamic>(),
      authorization: map['authorization'] == null
          ? null
          : (map['authorization'] as Map).cast<String, dynamic>(),
      cors: map['cors'] == null
          ? null
          : (map['cors'] as Map).cast<String, dynamic>(),
      mediation: map['mediation'] == null
          ? null
          : (map['mediation'] as Map).cast<String, dynamic>(),
      mtls: map['mtls'] == null
          ? null
          : (map['mtls'] as Map).cast<String, dynamic>(),
      threat: map['threat'] == null
          ? null
          : (map['threat'] as Map).cast<String, dynamic>(),
    );
  }
}
