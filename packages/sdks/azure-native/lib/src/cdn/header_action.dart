import 'package:pulumi/pulumi.dart' as pulumi;

/// Action to perform
enum HeaderAction implements pulumi.PulumiEnum<String> {
  append("Append"),
  overwrite("Overwrite"),
  delete("Delete");

  const HeaderAction(this.wireValue);
  @override
  final String wireValue;

  static HeaderAction fromValue(String value) {
    for (final item in HeaderAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HeaderAction value: $value');
  }
}
