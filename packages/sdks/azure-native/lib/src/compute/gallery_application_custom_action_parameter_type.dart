/// Specifies the type of the custom action parameter. Possible values are: String, ConfigurationDataBlob or LogOutputBlob
enum GalleryApplicationCustomActionParameterType {
  valueString("String"),
  valueConfigurationDataBlob("ConfigurationDataBlob"),
  valueLogOutputBlob("LogOutputBlob");

  const GalleryApplicationCustomActionParameterType(this.value);
  final String value;

  static GalleryApplicationCustomActionParameterType fromValue(String value) {
    for (final item in GalleryApplicationCustomActionParameterType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GalleryApplicationCustomActionParameterType value: $value');
  }
}

