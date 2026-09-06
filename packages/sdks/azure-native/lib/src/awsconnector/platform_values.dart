import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum PlatformValues implements pulumi.PulumiEnum<String> {
  windows("Windows");

  const PlatformValues(this.wireValue);
  @override
  final String wireValue;

  static PlatformValues fromValue(String value) {
    for (final item in PlatformValues.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PlatformValues value: $value');
  }
}
