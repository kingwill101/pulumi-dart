// ignore_for_file: unused_element, unnecessary_cast

/// Specification for vertex dataset resources.
class GoogleCloudDatacatalogV1VertexDatasetSpecResponse {
  /// The number of DataItems in this Dataset. Only apply for non-structured Dataset.
  final String dataItemCount;

  /// Type of the dataset.
  final String dataType;

  /// Creates a new [GoogleCloudDatacatalogV1VertexDatasetSpecResponse].
  /// [dataItemCount] The number of DataItems in this Dataset. Only apply for non-structured Dataset.
  /// [dataType] Type of the dataset.
  GoogleCloudDatacatalogV1VertexDatasetSpecResponse({
    required this.dataItemCount,
    required this.dataType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataItemCount'] = dataItemCount;
    map['dataType'] = dataType;
    return map;
  }

  factory GoogleCloudDatacatalogV1VertexDatasetSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1VertexDatasetSpecResponse(
      dataItemCount: map['dataItemCount'] as String,
      dataType: map['dataType'] as String,
    );
  }
}
