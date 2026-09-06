import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates if cancel must be triggered for the entire migration.
enum Cancel implements pulumi.PulumiEnum<String> {
  true_("True"),
  false_("False");

  const Cancel(this.wireValue);
  @override
  final String wireValue;

  static Cancel fromValue(String value) {
    for (final item in Cancel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Cancel value: $value');
  }
}
