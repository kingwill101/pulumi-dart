// ignore_for_file: unused_element, unnecessary_cast

/// The schema source information.
class GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSourceResponse {
  /// The schema name in the source.
  final String name;

  /// The Doc AI processor type name.
  final String processorType;

  GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSourceResponse({
    required this.name,
    required this.processorType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['processorType'] = processorType;
    return map;
  }

  factory GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSourceResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSourceResponse(
      name: map['name'] as String,
      processorType: map['processorType'] as String,
    );
  }
}
