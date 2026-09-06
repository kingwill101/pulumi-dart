import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of deployment package. Set to ``Image`` for container image and set ``Zip`` for .zip file archive.
enum PackageType implements pulumi.PulumiEnum<String> {
  image("Image"),
  zip("Zip");

  const PackageType(this.wireValue);
  @override
  final String wireValue;

  static PackageType fromValue(String value) {
    for (final item in PackageType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PackageType value: $value');
  }
}
