import 'package:pulumi/pulumi.dart' as pulumi;

/// The extended location type. Allowed value: 'CustomLocation'
enum ExtendedLocationTypes implements pulumi.PulumiEnum<String> {
  valueCustomLocation("CustomLocation");

  const ExtendedLocationTypes(this.wireValue);
  @override
  final String wireValue;

  static ExtendedLocationTypes fromValue(String value) {
    for (final item in ExtendedLocationTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExtendedLocationTypes value: $value');
  }
}
