import 'package:pulumi/pulumi.dart' as pulumi;

enum NGroupUpdateMode implements pulumi.PulumiEnum<String> {
  manual("Manual"),
  rolling("Rolling");

  const NGroupUpdateMode(this.wireValue);
  @override
  final String wireValue;

  static NGroupUpdateMode fromValue(String value) {
    for (final item in NGroupUpdateMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NGroupUpdateMode value: $value');
  }
}
