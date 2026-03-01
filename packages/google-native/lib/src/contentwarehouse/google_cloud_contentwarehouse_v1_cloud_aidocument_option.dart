// ignore_for_file: unused_element, unnecessary_cast

/// Request Option for processing Cloud AI Document in CW Document.
class GoogleCloudContentwarehouseV1CloudAIDocumentOption {
  /// If set, only selected entities will be converted to properties.
  final Map<String, String>? customizedEntitiesPropertiesConversions;

  /// Whether to convert all the entities to properties.
  final bool? enableEntitiesConversions;

  /// Creates a new [GoogleCloudContentwarehouseV1CloudAIDocumentOption].
  /// [customizedEntitiesPropertiesConversions] If set, only selected entities will be converted to properties.
  /// [enableEntitiesConversions] Whether to convert all the entities to properties.
  GoogleCloudContentwarehouseV1CloudAIDocumentOption({
    this.customizedEntitiesPropertiesConversions,
    this.enableEntitiesConversions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customizedEntitiesPropertiesConversions':
          ?customizedEntitiesPropertiesConversions,
      'enableEntitiesConversions': ?enableEntitiesConversions,
    };
  }

  factory GoogleCloudContentwarehouseV1CloudAIDocumentOption.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContentwarehouseV1CloudAIDocumentOption(
      customizedEntitiesPropertiesConversions:
          map['customizedEntitiesPropertiesConversions'] == null
          ? null
          : (map['customizedEntitiesPropertiesConversions'] as Map)
                .cast<String, String>(),
      enableEntitiesConversions: map['enableEntitiesConversions'] == null
          ? null
          : map['enableEntitiesConversions'] as bool,
    );
  }
}
