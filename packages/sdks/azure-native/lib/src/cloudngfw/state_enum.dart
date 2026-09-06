import 'package:pulumi/pulumi.dart' as pulumi;

/// state of this rule
enum StateEnum implements pulumi.PulumiEnum<String> {
  valueDISABLED("DISABLED"),
  valueENABLED("ENABLED");

  const StateEnum(this.wireValue);
  @override
  final String wireValue;

  static StateEnum fromValue(String value) {
    for (final item in StateEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StateEnum value: $value');
  }
}
