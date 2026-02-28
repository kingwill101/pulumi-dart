// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_vertex_model_source_info_source_type.dart';

/// Detail description of the source information of a Vertex model.
class GoogleCloudDatacatalogV1VertexModelSourceInfo {
  /// If this Model is copy of another Model. If true then source_type pertains to the original.
  final bool? copy;

  /// Type of the model source.
  final GoogleCloudDatacatalogV1VertexModelSourceInfoSourceType? sourceType;

  /// Creates a new [GoogleCloudDatacatalogV1VertexModelSourceInfo].
  /// [copy] If this Model is copy of another Model. If true then source_type pertains to the original.
  /// [sourceType] Type of the model source.
  GoogleCloudDatacatalogV1VertexModelSourceInfo({
    this.copy,
    this.sourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final copyValue = copy;
    if (copyValue != null) {
      map['copy'] = copyValue;
    }
    final sourceTypeValue = sourceType;
    if (sourceTypeValue != null) {
      map['sourceType'] = sourceTypeValue.value;
    }
    return map;
  }

  factory GoogleCloudDatacatalogV1VertexModelSourceInfo.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1VertexModelSourceInfo(
      copy: map['copy'] == null ? null : map['copy'] as bool,
      sourceType: map['sourceType'] == null
          ? null
          : GoogleCloudDatacatalogV1VertexModelSourceInfoSourceType.fromValue(
              map['sourceType'] as String),
    );
  }
}
