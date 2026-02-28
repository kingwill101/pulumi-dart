// ignore_for_file: unused_element, unnecessary_cast


/// The soft reference to everything you can attach a lineage event to.
class GoogleCloudDatacatalogLineageV1EntityReferenceResponse {
  /// [Fully Qualified Name (FQN)](https://cloud.google.com/data-catalog/docs/fully-qualified-names) of the entity.
  final String fullyQualifiedName;

  /// Creates a new [GoogleCloudDatacatalogLineageV1EntityReferenceResponse].
  /// [fullyQualifiedName] [Fully Qualified Name (FQN)](https://cloud.google.com/data-catalog/docs/fully-qualified-names) of the entity.
  GoogleCloudDatacatalogLineageV1EntityReferenceResponse({
    required this.fullyQualifiedName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullyQualifiedName': fullyQualifiedName,
    };
  }

  factory GoogleCloudDatacatalogLineageV1EntityReferenceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogLineageV1EntityReferenceResponse(
      fullyQualifiedName: map['fullyQualifiedName'] as String,
    );
  }
}

