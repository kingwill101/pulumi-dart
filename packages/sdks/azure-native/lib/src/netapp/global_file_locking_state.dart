import 'package:pulumi/pulumi.dart' as pulumi;

/// Flag indicating whether the global file lock is enabled for the cache.
enum GlobalFileLockingState implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled");

  const GlobalFileLockingState(this.wireValue);
  @override
  final String wireValue;

  static GlobalFileLockingState fromValue(String value) {
    for (final item in GlobalFileLockingState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalFileLockingState value: $value');
  }
}
