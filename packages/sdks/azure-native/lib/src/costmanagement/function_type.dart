import 'package:pulumi/pulumi.dart' as pulumi;

/// The name of the aggregation function to use.
enum FunctionType implements pulumi.PulumiEnum<String> {
  valueSum("Sum");

  const FunctionType(this.wireValue);
  @override
  final String wireValue;

  static FunctionType fromValue(String value) {
    for (final item in FunctionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FunctionType value: $value');
  }
}
