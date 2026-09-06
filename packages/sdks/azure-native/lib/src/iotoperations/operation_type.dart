import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of operation.
enum OperationType implements pulumi.PulumiEnum<String> {
  source("Source"),
  destination("Destination"),
  builtInTransformation("BuiltInTransformation");

  const OperationType(this.wireValue);
  @override
  final String wireValue;

  static OperationType fromValue(String value) {
    for (final item in OperationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperationType value: $value');
  }
}
