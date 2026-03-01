// ignore_for_file: unused_element, unnecessary_cast


/// Represents a Flocker volume mounted by the Flocker agent. One and only one of datasetName and datasetUUID should be set. Flocker volumes do not support ownership management or SELinux relabeling.
class FlockerVolumeSource {
  /// datasetName is Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated
  final String? datasetName;
  /// datasetUUID is the UUID of the dataset. This is unique identifier of a Flocker dataset
  final String? datasetUUID;

  /// Creates a new [FlockerVolumeSource].
  /// [datasetName] datasetName is Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated
  /// [datasetUUID] datasetUUID is the UUID of the dataset. This is unique identifier of a Flocker dataset
  FlockerVolumeSource({
    this.datasetName,
    this.datasetUUID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetName': ?datasetName,
      'datasetUUID': ?datasetUUID,
    };
  }

  factory FlockerVolumeSource.fromMap(Map<String, dynamic> map) {
    return FlockerVolumeSource(
      datasetName: map['datasetName'] == null ? null : map['datasetName'] as String,
      datasetUUID: map['datasetUUID'] == null ? null : map['datasetUUID'] as String,
    );
  }
}

