import 'package:pulumi/pulumi.dart' as pulumi;

/// Addon type
enum AddonType implements pulumi.PulumiEnum<String> {
  sRM("SRM"),
  vR("VR"),
  hCX("HCX"),
  arc("Arc");

  const AddonType(this.wireValue);
  @override
  final String wireValue;

  static AddonType fromValue(String value) {
    for (final item in AddonType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddonType value: $value');
  }
}
