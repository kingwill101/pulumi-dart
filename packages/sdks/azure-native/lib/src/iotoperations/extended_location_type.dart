import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of ExtendedLocation.
enum ExtendedLocationType implements pulumi.PulumiEnum<String> {
  customLocation("CustomLocation");

  const ExtendedLocationType(this.wireValue);
  @override
  final String wireValue;

  static ExtendedLocationType fromValue(String value) {
    for (final item in ExtendedLocationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExtendedLocationType value: $value');
  }
}
