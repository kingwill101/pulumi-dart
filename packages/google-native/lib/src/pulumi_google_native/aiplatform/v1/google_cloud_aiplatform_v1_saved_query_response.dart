// ignore_for_file: unused_element, unnecessary_cast

/// A SavedQuery is a view of the dataset. It references a subset of annotations by problem type and filters.
class GoogleCloudAiplatformV1SavedQueryResponse {
  /// Filters on the Annotations in the dataset.
  final String annotationFilter;

  /// Number of AnnotationSpecs in the context of the SavedQuery.
  final int annotationSpecCount;

  /// Timestamp when this SavedQuery was created.
  final String createTime;

  /// The user-defined name of the SavedQuery. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final String displayName;

  /// Used to perform a consistent read-modify-write update. If not set, a blind "overwrite" update happens.
  final String etag;

  /// Some additional information about the SavedQuery.
  final dynamic metadata;

  /// Resource name of the SavedQuery.
  final String name;

  /// Problem type of the SavedQuery. Allowed values: * IMAGE_CLASSIFICATION_SINGLE_LABEL * IMAGE_CLASSIFICATION_MULTI_LABEL * IMAGE_BOUNDING_POLY * IMAGE_BOUNDING_BOX * TEXT_CLASSIFICATION_SINGLE_LABEL * TEXT_CLASSIFICATION_MULTI_LABEL * TEXT_EXTRACTION * TEXT_SENTIMENT * VIDEO_CLASSIFICATION * VIDEO_OBJECT_TRACKING
  final String problemType;

  /// If the Annotations belonging to the SavedQuery can be used for AutoML training.
  final bool supportAutomlTraining;

  /// Timestamp when SavedQuery was last updated.
  final String updateTime;

  GoogleCloudAiplatformV1SavedQueryResponse({
    required this.annotationFilter,
    required this.annotationSpecCount,
    required this.createTime,
    required this.displayName,
    required this.etag,
    required this.metadata,
    required this.name,
    required this.problemType,
    required this.supportAutomlTraining,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotationFilter'] = annotationFilter;
    map['annotationSpecCount'] = annotationSpecCount;
    map['createTime'] = createTime;
    map['displayName'] = displayName;
    map['etag'] = etag;
    map['metadata'] = metadata;
    map['name'] = name;
    map['problemType'] = problemType;
    map['supportAutomlTraining'] = supportAutomlTraining;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GoogleCloudAiplatformV1SavedQueryResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1SavedQueryResponse(
      annotationFilter: map['annotationFilter'] as String,
      annotationSpecCount: map['annotationSpecCount'] as int,
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      metadata: map['metadata'],
      name: map['name'] as String,
      problemType: map['problemType'] as String,
      supportAutomlTraining: map['supportAutomlTraining'] as bool,
      updateTime: map['updateTime'] as String,
    );
  }
}
