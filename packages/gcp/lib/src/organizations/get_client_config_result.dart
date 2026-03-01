// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getClientConfig.
class GetClientConfigResult {
  /// The OAuth2 access token used by the client to authenticate against the Google Cloud API.
  final String accessToken;

  /// The default labels configured on the provider.
  final Map<String, String> defaultLabels;
  final String id;

  /// The ID of the project to apply any resources to.
  final String project;

  /// The region to operate under.
  final String region;

  /// The zone to operate under.
  final String zone;

  /// Creates a new [GetClientConfigResult].
  /// [accessToken] The OAuth2 access token used by the client to authenticate against the Google Cloud API.
  /// [defaultLabels] The default labels configured on the provider.
  /// [id] Required.
  /// [project] The ID of the project to apply any resources to.
  /// [region] The region to operate under.
  /// [zone] The zone to operate under.
  GetClientConfigResult({
    required this.accessToken,
    required this.defaultLabels,
    required this.id,
    required this.project,
    required this.region,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': accessToken,
      'defaultLabels': defaultLabels,
      'id': id,
      'project': project,
      'region': region,
      'zone': zone,
    };
  }

  factory GetClientConfigResult.fromMap(Map<String, dynamic> map) {
    return GetClientConfigResult(
      accessToken: map['accessToken'] as String,
      defaultLabels: (map['defaultLabels'] as Map).cast<String, String>(),
      id: map['id'] as String,
      project: map['project'] as String,
      region: map['region'] as String,
      zone: map['zone'] as String,
    );
  }
}
