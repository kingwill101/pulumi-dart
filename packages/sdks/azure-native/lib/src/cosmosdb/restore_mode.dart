import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the mode of the restore.
enum RestoreMode implements pulumi.PulumiEnum<String> {
  valuePointInTime("PointInTime");

  const RestoreMode(this.wireValue);
  @override
  final String wireValue;

  static RestoreMode fromValue(String value) {
    for (final item in RestoreMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RestoreMode value: $value');
  }
}
