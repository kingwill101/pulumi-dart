import 'package:pulumi/pulumi.dart' as pulumi;

/// the operation associated with the notification and its value must be "scale"
enum OperationType implements pulumi.PulumiEnum<String> {
  valueScale("Scale");

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
