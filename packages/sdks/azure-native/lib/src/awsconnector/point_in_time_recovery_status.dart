import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum PointInTimeRecoveryStatus implements pulumi.PulumiEnum<String> {
  dISABLED("DISABLED"),
  eNABLED("ENABLED");

  const PointInTimeRecoveryStatus(this.wireValue);
  @override
  final String wireValue;

  static PointInTimeRecoveryStatus fromValue(String value) {
    for (final item in PointInTimeRecoveryStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PointInTimeRecoveryStatus value: $value');
  }
}
