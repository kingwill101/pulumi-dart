import 'package:pulumi/pulumi.dart' as pulumi;

/// Level of the status.
enum LevelType implements pulumi.PulumiEnum<String> {
  valueError("Error"),
  valueWarning("Warning"),
  valueInformation("Information");

  const LevelType(this.wireValue);
  @override
  final String wireValue;

  static LevelType fromValue(String value) {
    for (final item in LevelType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LevelType value: $value');
  }
}
