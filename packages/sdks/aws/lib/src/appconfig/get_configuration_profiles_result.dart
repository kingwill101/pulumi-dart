// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getConfigurationProfiles.
class GetConfigurationProfilesResult {
  final String? applicationId;
  /// Set of Configuration Profile IDs associated with the AppConfig Application.
  final List<String>? configurationProfileIds;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;

  /// Creates a new [GetConfigurationProfilesResult].
  /// [applicationId] Optional.
  /// [configurationProfileIds] Set of Configuration Profile IDs associated with the AppConfig Application.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  const GetConfigurationProfilesResult({
    this.applicationId,
    this.configurationProfileIds,
    this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'configurationProfileIds': ?configurationProfileIds,
      'id': ?id,
      'region': ?region,
    };
  }

  factory GetConfigurationProfilesResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationProfilesResult(
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configurationProfileIds: (() { final guardedValue = map['configurationProfileIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
