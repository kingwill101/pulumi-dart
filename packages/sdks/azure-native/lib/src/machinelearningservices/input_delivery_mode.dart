import 'package:pulumi/pulumi.dart' as pulumi;

/// Enum to determine the input data delivery mode.
enum InputDeliveryMode implements pulumi.PulumiEnum<String> {
  readOnlyMount("ReadOnlyMount"),
  readWriteMount("ReadWriteMount"),
  download("Download"),
  direct("Direct"),
  evalMount("EvalMount"),
  evalDownload("EvalDownload");

  const InputDeliveryMode(this.wireValue);
  @override
  final String wireValue;

  static InputDeliveryMode fromValue(String value) {
    for (final item in InputDeliveryMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InputDeliveryMode value: $value');
  }
}
