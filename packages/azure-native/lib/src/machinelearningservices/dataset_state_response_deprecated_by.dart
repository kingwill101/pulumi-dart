// ignore_for_file: unused_element, unnecessary_cast


/// Reference to better Dataset or a Definition
class DatasetStateResponseDeprecatedBy {
  /// Unique Dataset identifier.
  final String datasetId;
  /// Definition Version
  final String? definitionVersion;

  /// Creates a new [DatasetStateResponseDeprecatedBy].
  /// [datasetId] Unique Dataset identifier.
  /// [definitionVersion] Definition Version
  DatasetStateResponseDeprecatedBy({
    required this.datasetId,
    this.definitionVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'definitionVersion': ?definitionVersion,
    };
  }

  factory DatasetStateResponseDeprecatedBy.fromMap(Map<String, dynamic> map) {
    return DatasetStateResponseDeprecatedBy(
      datasetId: map['datasetId'] as String,
      definitionVersion: map['definitionVersion'] == null ? null : map['definitionVersion'] as String,
    );
  }
}

