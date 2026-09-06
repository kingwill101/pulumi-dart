import 'package:pulumi/pulumi.dart' as pulumi;

/// The Data Actions that can be enabled for a Smart Identity Provider Application.
enum SmartDataActions implements pulumi.PulumiEnum<String> {
  valueRead("Read");

  const SmartDataActions(this.wireValue);
  @override
  final String wireValue;

  static SmartDataActions fromValue(String value) {
    for (final item in SmartDataActions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SmartDataActions value: $value');
  }
}
