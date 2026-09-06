import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of package source for a archive.
enum PackageSourceType implements pulumi.PulumiEnum<String> {
  valueRemote("remote");

  const PackageSourceType(this.wireValue);
  @override
  final String wireValue;

  static PackageSourceType fromValue(String value) {
    for (final item in PackageSourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PackageSourceType value: $value');
  }
}
