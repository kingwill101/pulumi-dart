import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes operator to be matched
enum HttpVersionOperator implements pulumi.PulumiEnum<String> {
  equal("Equal");

  const HttpVersionOperator(this.wireValue);
  @override
  final String wireValue;

  static HttpVersionOperator fromValue(String value) {
    for (final item in HttpVersionOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpVersionOperator value: $value');
  }
}
