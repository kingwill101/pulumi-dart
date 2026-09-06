import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the conflict resolution mode.
enum ConflictResolutionMode implements pulumi.PulumiEnum<String> {
  valueLastWriterWins("LastWriterWins"),
  valueCustom("Custom");

  const ConflictResolutionMode(this.wireValue);
  @override
  final String wireValue;

  static ConflictResolutionMode fromValue(String value) {
    for (final item in ConflictResolutionMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConflictResolutionMode value: $value');
  }
}
