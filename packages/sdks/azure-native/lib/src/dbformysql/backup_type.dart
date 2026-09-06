import 'package:pulumi/pulumi.dart' as pulumi;

enum BackupType implements pulumi.PulumiEnum<String> {
  fULL("FULL");

  const BackupType(this.wireValue);
  @override
  final String wireValue;

  static BackupType fromValue(String value) {
    for (final item in BackupType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupType value: $value');
  }
}
