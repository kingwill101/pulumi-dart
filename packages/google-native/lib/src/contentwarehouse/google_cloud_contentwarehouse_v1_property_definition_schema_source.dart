// ignore_for_file: unused_element, unnecessary_cast

/// The schema source information.
class GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource {
  /// The schema name in the source.
  final String? name;

  /// The Doc AI processor type name.
  final String? processorType;

  /// Creates a new [GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource].
  /// [name] The schema name in the source.
  /// [processorType] The Doc AI processor type name.
  GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource({
    this.name,
    this.processorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'processorType': ?processorType};
  }

  factory GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource(
      name: map['name'] == null ? null : map['name'] as String,
      processorType: map['processorType'] == null
          ? null
          : map['processorType'] as String,
    );
  }
}
