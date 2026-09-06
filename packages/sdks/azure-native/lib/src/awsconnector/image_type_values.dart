import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum ImageTypeValues implements pulumi.PulumiEnum<String> {
  kernel("kernel"),
  machine("machine"),
  ramdisk("ramdisk");

  const ImageTypeValues(this.wireValue);
  @override
  final String wireValue;

  static ImageTypeValues fromValue(String value) {
    for (final item in ImageTypeValues.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageTypeValues value: $value');
  }
}
