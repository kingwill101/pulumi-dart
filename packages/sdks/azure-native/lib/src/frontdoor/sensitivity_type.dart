import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the override sensitivity to be applied when rule matches.
enum SensitivityType implements pulumi.PulumiEnum<String> {
  low("Low"),
  medium("Medium"),
  high("High");

  const SensitivityType(this.wireValue);
  @override
  final String wireValue;

  static SensitivityType fromValue(String value) {
    for (final item in SensitivityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SensitivityType value: $value');
  }
}
