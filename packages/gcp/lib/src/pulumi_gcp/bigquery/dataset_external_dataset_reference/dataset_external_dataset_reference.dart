// ignore_for_file: unused_element, unnecessary_cast

class DatasetExternalDatasetReference {
  /// The connection id that is used to access the externalSource.
  /// Format: projects/{projectId}/locations/{locationId}/connections/{connectionId}
  final String connection;

  /// External source that backs this dataset.
  final String externalSource;

  DatasetExternalDatasetReference({
    required this.connection,
    required this.externalSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connection'] = connection;
    map['externalSource'] = externalSource;
    return map;
  }

  factory DatasetExternalDatasetReference.fromMap(Map<String, dynamic> map) {
    return DatasetExternalDatasetReference(
      connection: map['connection'] as String,
      externalSource: map['externalSource'] as String,
    );
  }
}
