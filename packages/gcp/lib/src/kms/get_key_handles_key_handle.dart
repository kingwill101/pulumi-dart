// ignore_for_file: unused_element, unnecessary_cast

class GetKeyHandlesKeyHandle {
  /// The identifier of the KMS Key created for the KeyHandle. Its format is `projects/{projectId}/locations/{location}/keyRings/{keyRingName}/cryptoKeys/{cryptoKeyName}`.
  final String kmsKey;

  /// The name of the KeyHandle. Its format is `projects/{projectId}/locations/{location}/keyHandles/{keyHandleName}`.
  final String name;

  /// The resource type by which to filter KeyHandle e.g. {SERVICE}.googleapis.com/{TYPE}. See documentation for supported resource types.
  ///
  /// - - -
  final String resourceTypeSelector;

  /// Creates a new [GetKeyHandlesKeyHandle].
  /// [kmsKey] The identifier of the KMS Key created for the KeyHandle. Its format is `projects/{projectId}/locations/{location}/keyRings/{keyRingName}/cryptoKeys/{cryptoKeyName}`.
  /// [name] The name of the KeyHandle. Its format is `projects/{projectId}/locations/{location}/keyHandles/{keyHandleName}`.
  /// [resourceTypeSelector] The resource type by which to filter KeyHandle e.g. {SERVICE}.googleapis.com/{TYPE}. See documentation for supported resource types.
  GetKeyHandlesKeyHandle({
    required this.kmsKey,
    required this.name,
    required this.resourceTypeSelector,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKey'] = kmsKey;
    map['name'] = name;
    map['resourceTypeSelector'] = resourceTypeSelector;
    return map;
  }

  factory GetKeyHandlesKeyHandle.fromMap(Map<String, dynamic> map) {
    return GetKeyHandlesKeyHandle(
      kmsKey: map['kmsKey'] as String,
      name: map['name'] as String,
      resourceTypeSelector: map['resourceTypeSelector'] as String,
    );
  }
}
