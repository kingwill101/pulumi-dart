// ignore_for_file: unused_element, unnecessary_cast


/// Reference to an asset via its path in a datastore.
class DataPathAssetReferenceResponse {
  /// ARM resource ID of the datastore where the asset is located.
  final String? datastoreId;
  /// The path of the file/directory in the datastore.
  final String? path;
  /// Enum to determine which reference method to use for an asset.
  /// Expected value is 'DataPath'.
  final String referenceType;

  /// Creates a new [DataPathAssetReferenceResponse].
  /// [datastoreId] ARM resource ID of the datastore where the asset is located.
  /// [path] The path of the file/directory in the datastore.
  /// [referenceType] Enum to determine which reference method to use for an asset.
  DataPathAssetReferenceResponse({
    this.datastoreId,
    this.path,
    required this.referenceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datastoreId': ?datastoreId,
      'path': ?path,
      'referenceType': referenceType,
    };
  }

  factory DataPathAssetReferenceResponse.fromMap(Map<String, dynamic> map) {
    return DataPathAssetReferenceResponse(
      datastoreId: map['datastoreId'] == null ? null : map['datastoreId'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      referenceType: map['referenceType'] as String,
    );
  }
}

