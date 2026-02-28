// ignore_for_file: unused_element, unnecessary_cast

/// The soft reference to everything you can attach a lineage event to.
class GoogleCloudDatacatalogLineageV1EntityReference {
  /// [Fully Qualified Name (FQN)](https://cloud.google.com/data-catalog/docs/fully-qualified-names) of the entity.
  final String fullyQualifiedName;

  /// Creates a new [GoogleCloudDatacatalogLineageV1EntityReference].
  /// [fullyQualifiedName] [Fully Qualified Name (FQN)](https://cloud.google.com/data-catalog/docs/fully-qualified-names) of the entity.
  GoogleCloudDatacatalogLineageV1EntityReference({
    required this.fullyQualifiedName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fullyQualifiedName'] = fullyQualifiedName;
    return map;
  }

  factory GoogleCloudDatacatalogLineageV1EntityReference.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogLineageV1EntityReference(
      fullyQualifiedName: map['fullyQualifiedName'] as String,
    );
  }
}
