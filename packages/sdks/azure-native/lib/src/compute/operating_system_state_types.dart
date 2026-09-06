import 'package:pulumi/pulumi.dart' as pulumi;

/// The OS State. For managed images, use Generalized.
enum OperatingSystemStateTypes implements pulumi.PulumiEnum<String> {
  generalized("Generalized"),
  specialized("Specialized");

  const OperatingSystemStateTypes(this.wireValue);
  @override
  final String wireValue;

  static OperatingSystemStateTypes fromValue(String value) {
    for (final item in OperatingSystemStateTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperatingSystemStateTypes value: $value');
  }
}
