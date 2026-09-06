import 'package:pulumi/pulumi.dart' as pulumi;

/// Show costs accumulated over time.
enum AccumulatedType implements pulumi.PulumiEnum<String> {
  valueTrue("true"),
  valueFalse("false");

  const AccumulatedType(this.wireValue);
  @override
  final String wireValue;

  static AccumulatedType fromValue(String value) {
    for (final item in AccumulatedType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccumulatedType value: $value');
  }
}
