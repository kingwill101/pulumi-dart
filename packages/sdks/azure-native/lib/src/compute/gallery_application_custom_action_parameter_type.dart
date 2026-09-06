import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the type of the custom action parameter. Possible values are: String, ConfigurationDataBlob or LogOutputBlob
enum GalleryApplicationCustomActionParameterType implements pulumi.PulumiEnum<String> {
  valueString("String"),
  valueConfigurationDataBlob("ConfigurationDataBlob"),
  valueLogOutputBlob("LogOutputBlob");

  const GalleryApplicationCustomActionParameterType(this.wireValue);
  @override
  final String wireValue;

  static GalleryApplicationCustomActionParameterType fromValue(String value) {
    for (final item in GalleryApplicationCustomActionParameterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GalleryApplicationCustomActionParameterType value: $value');
  }
}
