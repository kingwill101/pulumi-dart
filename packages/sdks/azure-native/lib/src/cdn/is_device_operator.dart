import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes operator to be matched
enum IsDeviceOperator implements pulumi.PulumiEnum<String> {
  equal("Equal");

  const IsDeviceOperator(this.wireValue);
  @override
  final String wireValue;

  static IsDeviceOperator fromValue(String value) {
    for (final item in IsDeviceOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IsDeviceOperator value: $value');
  }
}
