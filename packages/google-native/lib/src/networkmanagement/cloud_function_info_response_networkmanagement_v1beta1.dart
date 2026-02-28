// ignore_for_file: unused_element, unnecessary_cast

/// For display only. Metadata associated with a Cloud Function.
class CloudFunctionInfoResponseNetworkmanagementV1beta1 {
  /// Name of a Cloud Function.
  final String displayName;

  /// Location in which the Cloud Function is deployed.
  final String location;

  /// URI of a Cloud Function.
  final String uri;

  /// Latest successfully deployed version id of the Cloud Function.
  final String versionId;

  /// Creates a new [CloudFunctionInfoResponseNetworkmanagementV1beta1].
  /// [displayName] Name of a Cloud Function.
  /// [location] Location in which the Cloud Function is deployed.
  /// [uri] URI of a Cloud Function.
  /// [versionId] Latest successfully deployed version id of the Cloud Function.
  CloudFunctionInfoResponseNetworkmanagementV1beta1({
    required this.displayName,
    required this.location,
    required this.uri,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['location'] = location;
    map['uri'] = uri;
    map['versionId'] = versionId;
    return map;
  }

  factory CloudFunctionInfoResponseNetworkmanagementV1beta1.fromMap(
      Map<String, dynamic> map) {
    return CloudFunctionInfoResponseNetworkmanagementV1beta1(
      displayName: map['displayName'] as String,
      location: map['location'] as String,
      uri: map['uri'] as String,
      versionId: map['versionId'] as String,
    );
  }
}
