// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getKeyHandle.
class GetKeyHandleResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The identifier of the KMS Key created for the KeyHandle. Its format is `projects/{projectId}/locations/{location}/keyRings/{keyRingName}/cryptoKeys/{cryptoKeyName}`.
  final String kmsKey;

  /// The location of the KMS Key and KeyHandle.
  final String location;
  final String name;

  /// The identifier of the project where KMS KeyHandle is created.
  final String? project;

  /// Indicates the resource type that the resulting CryptoKey is meant to protect, e.g. {SERVICE}.googleapis.com/{TYPE}. See documentation for supported resource types.
  final String resourceTypeSelector;

  GetKeyHandleResult({
    required this.id,
    required this.kmsKey,
    required this.location,
    required this.name,
    this.project,
    required this.resourceTypeSelector,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['kmsKey'] = kmsKey;
    map['location'] = location;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['resourceTypeSelector'] = resourceTypeSelector;
    return map;
  }

  factory GetKeyHandleResult.fromMap(Map<String, dynamic> map) {
    return GetKeyHandleResult(
      id: map['id'] as String,
      kmsKey: map['kmsKey'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      resourceTypeSelector: map['resourceTypeSelector'] as String,
    );
  }
}
