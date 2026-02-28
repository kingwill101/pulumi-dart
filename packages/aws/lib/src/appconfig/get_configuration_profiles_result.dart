// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getConfigurationProfiles.
class GetConfigurationProfilesResult {
  final String applicationId;

  /// Set of Configuration Profile IDs associated with the AppConfig Application.
  final List<String> configurationProfileIds;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Creates a new [GetConfigurationProfilesResult].
  /// [applicationId] Required.
  /// [configurationProfileIds] Set of Configuration Profile IDs associated with the AppConfig Application.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  GetConfigurationProfilesResult({
    required this.applicationId,
    required this.configurationProfileIds,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    map['configurationProfileIds'] = configurationProfileIds;
    map['id'] = id;
    map['region'] = region;
    return map;
  }

  factory GetConfigurationProfilesResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationProfilesResult(
      applicationId: map['applicationId'] as String,
      configurationProfileIds:
          (map['configurationProfileIds'] as List).cast<String>(),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
