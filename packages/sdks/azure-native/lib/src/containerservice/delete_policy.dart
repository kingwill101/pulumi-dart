import 'package:pulumi/pulumi.dart' as pulumi;

/// Delete options of a namespace.
enum DeletePolicy implements pulumi.PulumiEnum<String> {
  valueKeep("Keep"),
  valueDelete("Delete");

  const DeletePolicy(this.wireValue);
  @override
  final String wireValue;

  static DeletePolicy fromValue(String value) {
    for (final item in DeletePolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeletePolicy value: $value');
  }
}
