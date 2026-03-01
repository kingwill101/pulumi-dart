// ignore_for_file: unused_element, unnecessary_cast

/// For display only. Metadata associated with a Cloud Function.
class CloudFunctionInfoResponse {
  /// Name of a Cloud Function.
  final String displayName;

  /// Location in which the Cloud Function is deployed.
  final String location;

  /// URI of a Cloud Function.
  final String uri;

  /// Latest successfully deployed version id of the Cloud Function.
  final String versionId;

  /// Creates a new [CloudFunctionInfoResponse].
  /// [displayName] Name of a Cloud Function.
  /// [location] Location in which the Cloud Function is deployed.
  /// [uri] URI of a Cloud Function.
  /// [versionId] Latest successfully deployed version id of the Cloud Function.
  CloudFunctionInfoResponse({
    required this.displayName,
    required this.location,
    required this.uri,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'location': location,
      'uri': uri,
      'versionId': versionId,
    };
  }

  factory CloudFunctionInfoResponse.fromMap(Map<String, dynamic> map) {
    return CloudFunctionInfoResponse(
      displayName: map['displayName'] as String,
      location: map['location'] as String,
      uri: map['uri'] as String,
      versionId: map['versionId'] as String,
    );
  }
}
