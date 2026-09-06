import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates if cutover must be triggered for the entire migration.
enum TriggerCutover implements pulumi.PulumiEnum<String> {
  true_("True"),
  false_("False");

  const TriggerCutover(this.wireValue);
  @override
  final String wireValue;

  static TriggerCutover fromValue(String value) {
    for (final item in TriggerCutover.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggerCutover value: $value');
  }
}
