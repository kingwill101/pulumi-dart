// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAzureVersions.
class GetAzureVersionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? location;
  final String? project;

  /// A list of Azure regions that are available for use with this project and GCP location.
  final List<String> supportedRegions;

  /// A list of versions available for use with this project and location.
  final List<String> validVersions;

  GetAzureVersionsResult({
    required this.id,
    this.location,
    this.project,
    required this.supportedRegions,
    required this.validVersions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['supportedRegions'] = supportedRegions;
    map['validVersions'] = validVersions;
    return map;
  }

  factory GetAzureVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetAzureVersionsResult(
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      supportedRegions: (map['supportedRegions'] as List).cast<String>(),
      validVersions: (map['validVersions'] as List).cast<String>(),
    );
  }
}
