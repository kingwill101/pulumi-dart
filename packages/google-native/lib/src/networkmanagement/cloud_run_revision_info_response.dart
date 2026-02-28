// ignore_for_file: unused_element, unnecessary_cast

/// For display only. Metadata associated with a Cloud Run revision.
class CloudRunRevisionInfoResponse {
  /// Name of a Cloud Run revision.
  final String displayName;

  /// Location in which this revision is deployed.
  final String location;

  /// URI of Cloud Run service this revision belongs to.
  final String serviceUri;

  /// URI of a Cloud Run revision.
  final String uri;

  /// Creates a new [CloudRunRevisionInfoResponse].
  /// [displayName] Name of a Cloud Run revision.
  /// [location] Location in which this revision is deployed.
  /// [serviceUri] URI of Cloud Run service this revision belongs to.
  /// [uri] URI of a Cloud Run revision.
  CloudRunRevisionInfoResponse({
    required this.displayName,
    required this.location,
    required this.serviceUri,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['location'] = location;
    map['serviceUri'] = serviceUri;
    map['uri'] = uri;
    return map;
  }

  factory CloudRunRevisionInfoResponse.fromMap(Map<String, dynamic> map) {
    return CloudRunRevisionInfoResponse(
      displayName: map['displayName'] as String,
      location: map['location'] as String,
      serviceUri: map['serviceUri'] as String,
      uri: map['uri'] as String,
    );
  }
}
