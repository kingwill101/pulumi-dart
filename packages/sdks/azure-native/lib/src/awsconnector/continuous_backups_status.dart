import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum ContinuousBackupsStatus implements pulumi.PulumiEnum<String> {
  dISABLED("DISABLED"),
  eNABLED("ENABLED");

  const ContinuousBackupsStatus(this.wireValue);
  @override
  final String wireValue;

  static ContinuousBackupsStatus fromValue(String value) {
    for (final item in ContinuousBackupsStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContinuousBackupsStatus value: $value');
  }
}
