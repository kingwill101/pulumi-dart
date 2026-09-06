import 'package:pulumi/pulumi.dart' as pulumi;

/// Output data delivery mode enums.
enum OutputDeliveryMode implements pulumi.PulumiEnum<String> {
  readWriteMount("ReadWriteMount"),
  upload("Upload"),
  direct("Direct");

  const OutputDeliveryMode(this.wireValue);
  @override
  final String wireValue;

  static OutputDeliveryMode fromValue(String value) {
    for (final item in OutputDeliveryMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OutputDeliveryMode value: $value');
  }
}
