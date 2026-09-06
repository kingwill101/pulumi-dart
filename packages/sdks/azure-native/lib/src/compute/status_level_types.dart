import 'package:pulumi/pulumi.dart' as pulumi;

/// The level code.
enum StatusLevelTypes implements pulumi.PulumiEnum<String> {
  valueInfo("Info"),
  valueWarning("Warning"),
  valueError("Error");

  const StatusLevelTypes(this.wireValue);
  @override
  final String wireValue;

  static StatusLevelTypes fromValue(String value) {
    for (final item in StatusLevelTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatusLevelTypes value: $value');
  }
}
