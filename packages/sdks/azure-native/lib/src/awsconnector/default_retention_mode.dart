import 'package:pulumi/pulumi.dart' as pulumi;

/// The default Object Lock retention mode you want to apply to new objects placed in the specified bucket. If Object Lock is turned on, you must specify ``Mode`` and specify either ``Days`` or ``Years``.
enum DefaultRetentionMode implements pulumi.PulumiEnum<String> {
  cOMPLIANCE("COMPLIANCE"),
  gOVERNANCE("GOVERNANCE");

  const DefaultRetentionMode(this.wireValue);
  @override
  final String wireValue;

  static DefaultRetentionMode fromValue(String value) {
    for (final item in DefaultRetentionMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefaultRetentionMode value: $value');
  }
}
