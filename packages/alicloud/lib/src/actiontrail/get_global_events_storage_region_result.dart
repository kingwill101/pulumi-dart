// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGlobalEventsStorageRegion.
class GetGlobalEventsStorageRegionResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String storageRegion;

  /// Creates a new [GetGlobalEventsStorageRegionResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [storageRegion] Required.
  GetGlobalEventsStorageRegionResult({
    required this.id,
    required this.storageRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'storageRegion': storageRegion,
    };
  }

  factory GetGlobalEventsStorageRegionResult.fromMap(Map<String, dynamic> map) {
    return GetGlobalEventsStorageRegionResult(
      id: map['id'] as String,
      storageRegion: map['storageRegion'] as String,
    );
  }
}

