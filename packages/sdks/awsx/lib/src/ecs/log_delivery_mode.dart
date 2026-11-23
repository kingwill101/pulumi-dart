import 'package:pulumi/pulumi.dart' as pulumi;

enum LogDeliveryMode implements pulumi.PulumiEnum<String> {
  bLOCKING("blocking"),
  nONBLOCKING("non-blocking");

  const LogDeliveryMode(this.wireValue);
  @override
  final String wireValue;

  static LogDeliveryMode fromValue(String value) {
    for (final item in LogDeliveryMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogDeliveryMode value: $value');
  }
}
