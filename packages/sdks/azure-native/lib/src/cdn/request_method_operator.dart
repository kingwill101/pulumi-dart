import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes operator to be matched
enum RequestMethodOperator implements pulumi.PulumiEnum<String> {
  equal("Equal");

  const RequestMethodOperator(this.wireValue);
  @override
  final String wireValue;

  static RequestMethodOperator fromValue(String value) {
    for (final item in RequestMethodOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RequestMethodOperator value: $value');
  }
}
