// ignore_for_file: unused_element, unnecessary_cast

/// Detail description of the source information of a Vertex model.
class GoogleCloudDatacatalogV1VertexModelSourceInfoResponse {
  /// If this Model is copy of another Model. If true then source_type pertains to the original.
  final bool copy;

  /// Type of the model source.
  final String sourceType;

  GoogleCloudDatacatalogV1VertexModelSourceInfoResponse({
    required this.copy,
    required this.sourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['copy'] = copy;
    map['sourceType'] = sourceType;
    return map;
  }

  factory GoogleCloudDatacatalogV1VertexModelSourceInfoResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1VertexModelSourceInfoResponse(
      copy: map['copy'] as bool,
      sourceType: map['sourceType'] as String,
    );
  }
}
