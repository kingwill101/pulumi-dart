import 'package:pulumi/pulumi.dart' as pulumi;

/// different usage type like PAYG/COMMITTED
enum UsageType implements pulumi.PulumiEnum<String> {
  valuePAYG("PAYG"),
  valueCOMMITTED("COMMITTED");

  const UsageType(this.wireValue);
  @override
  final String wireValue;

  static UsageType fromValue(String value) {
    for (final item in UsageType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UsageType value: $value');
  }
}
