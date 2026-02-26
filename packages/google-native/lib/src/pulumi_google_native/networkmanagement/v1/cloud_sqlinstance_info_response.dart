// ignore_for_file: unused_element, unnecessary_cast

/// For display only. Metadata associated with a Cloud SQL instance.
class CloudSQLInstanceInfoResponse {
  /// Name of a Cloud SQL instance.
  final String displayName;

  /// External IP address of a Cloud SQL instance.
  final String externalIp;

  /// Internal IP address of a Cloud SQL instance.
  final String internalIp;

  /// URI of a Cloud SQL instance network or empty string if the instance does not have one.
  final String networkUri;

  /// Region in which the Cloud SQL instance is running.
  final String region;

  /// URI of a Cloud SQL instance.
  final String uri;

  CloudSQLInstanceInfoResponse({
    required this.displayName,
    required this.externalIp,
    required this.internalIp,
    required this.networkUri,
    required this.region,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['externalIp'] = externalIp;
    map['internalIp'] = internalIp;
    map['networkUri'] = networkUri;
    map['region'] = region;
    map['uri'] = uri;
    return map;
  }

  factory CloudSQLInstanceInfoResponse.fromMap(Map<String, dynamic> map) {
    return CloudSQLInstanceInfoResponse(
      displayName: map['displayName'] as String,
      externalIp: map['externalIp'] as String,
      internalIp: map['internalIp'] as String,
      networkUri: map['networkUri'] as String,
      region: map['region'] as String,
      uri: map['uri'] as String,
    );
  }
}
