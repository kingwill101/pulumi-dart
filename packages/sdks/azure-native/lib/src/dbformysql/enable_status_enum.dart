import 'package:pulumi/pulumi.dart' as pulumi;

/// Enable Log On Disk or not.
enum EnableStatusEnum implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const EnableStatusEnum(this.wireValue);
  @override
  final String wireValue;

  static EnableStatusEnum fromValue(String value) {
    for (final item in EnableStatusEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnableStatusEnum value: $value');
  }
}
