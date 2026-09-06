import 'package:pulumi/pulumi.dart' as pulumi;

/// Direction of data movement
enum Direction implements pulumi.PulumiEnum<String> {
  valueSend("Send"),
  valueReceive("Receive");

  const Direction(this.wireValue);
  @override
  final String wireValue;

  static Direction fromValue(String value) {
    for (final item in Direction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Direction value: $value');
  }
}
