import 'package:pulumi/pulumi.dart' as pulumi;

/// The overwrite option for the SSIS project migration
enum SsisMigrationOverwriteOption implements pulumi.PulumiEnum<String> {
  valueIgnore("Ignore"),
  valueOverwrite("Overwrite");

  const SsisMigrationOverwriteOption(this.wireValue);
  @override
  final String wireValue;

  static SsisMigrationOverwriteOption fromValue(String value) {
    for (final item in SsisMigrationOverwriteOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SsisMigrationOverwriteOption value: $value');
  }
}
