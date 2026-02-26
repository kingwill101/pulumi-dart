// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_vertex_dataset_spec_data_type.dart';

/// Specification for vertex dataset resources.
class GoogleCloudDatacatalogV1VertexDatasetSpec {
  /// The number of DataItems in this Dataset. Only apply for non-structured Dataset.
  final String? dataItemCount;

  /// Type of the dataset.
  final GoogleCloudDatacatalogV1VertexDatasetSpecDataType? dataType;

  GoogleCloudDatacatalogV1VertexDatasetSpec({
    this.dataItemCount,
    this.dataType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataItemCountValue = dataItemCount;
    if (dataItemCountValue != null) {
      map['dataItemCount'] = dataItemCountValue;
    }
    final dataTypeValue = dataType;
    if (dataTypeValue != null) {
      map['dataType'] = dataTypeValue.value;
    }
    return map;
  }

  factory GoogleCloudDatacatalogV1VertexDatasetSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1VertexDatasetSpec(
      dataItemCount:
          map['dataItemCount'] == null ? null : map['dataItemCount'] as String,
      dataType: map['dataType'] == null
          ? null
          : GoogleCloudDatacatalogV1VertexDatasetSpecDataType.fromValue(
              map['dataType'] as String),
    );
  }
}
