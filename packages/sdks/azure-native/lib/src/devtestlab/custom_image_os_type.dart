import 'package:pulumi/pulumi.dart' as pulumi;

/// The OS type of the custom image (i.e. Windows, Linux)
enum CustomImageOsType implements pulumi.PulumiEnum<String> {
  windows("Windows"),
  linux("Linux"),
  none("None");

  const CustomImageOsType(this.wireValue);
  @override
  final String wireValue;

  static CustomImageOsType fromValue(String value) {
    for (final item in CustomImageOsType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomImageOsType value: $value');
  }
}
