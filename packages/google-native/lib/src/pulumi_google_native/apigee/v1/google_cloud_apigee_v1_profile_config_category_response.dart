// ignore_for_file: unused_element, unnecessary_cast

/// Advanced API Security provides security profile that scores the following categories.
class GoogleCloudApigeeV1ProfileConfigCategoryResponse {
  /// Checks for abuse, which includes any requests sent to the API for purposes other than what it is intended for, such as high volumes of requests, data scraping, and abuse related to authorization.
  final Map<String, dynamic> abuse;

  /// Checks to see if you have an authorization policy in place.
  final Map<String, dynamic> authorization;

  /// Checks to see if you have CORS policy in place.
  final Map<String, dynamic> cors;

  /// Checks to see if you have a mediation policy in place.
  final Map<String, dynamic> mediation;

  /// Checks to see if you have configured mTLS for the target server.
  final Map<String, dynamic> mtls;

  /// Checks to see if you have a threat protection policy in place.
  final Map<String, dynamic> threat;

  GoogleCloudApigeeV1ProfileConfigCategoryResponse({
    required this.abuse,
    required this.authorization,
    required this.cors,
    required this.mediation,
    required this.mtls,
    required this.threat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['abuse'] = abuse;
    map['authorization'] = authorization;
    map['cors'] = cors;
    map['mediation'] = mediation;
    map['mtls'] = mtls;
    map['threat'] = threat;
    return map;
  }

  factory GoogleCloudApigeeV1ProfileConfigCategoryResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1ProfileConfigCategoryResponse(
      abuse: (map['abuse'] as Map).cast<String, dynamic>(),
      authorization: (map['authorization'] as Map).cast<String, dynamic>(),
      cors: (map['cors'] as Map).cast<String, dynamic>(),
      mediation: (map['mediation'] as Map).cast<String, dynamic>(),
      mtls: (map['mtls'] as Map).cast<String, dynamic>(),
      threat: (map['threat'] as Map).cast<String, dynamic>(),
    );
  }
}
