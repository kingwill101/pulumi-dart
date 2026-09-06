import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of processor.
enum ProcessorType implements pulumi.PulumiEnum<String> {
  batch("Batch");

  const ProcessorType(this.wireValue);
  @override
  final String wireValue;

  static ProcessorType fromValue(String value) {
    for (final item in ProcessorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProcessorType value: $value');
  }
}
