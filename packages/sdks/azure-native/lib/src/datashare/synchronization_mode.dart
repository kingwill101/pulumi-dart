import 'package:pulumi/pulumi.dart' as pulumi;

/// Synchronization mode
enum SynchronizationMode implements pulumi.PulumiEnum<String> {
  valueIncremental("Incremental"),
  valueFullSync("FullSync");

  const SynchronizationMode(this.wireValue);
  @override
  final String wireValue;

  static SynchronizationMode fromValue(String value) {
    for (final item in SynchronizationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SynchronizationMode value: $value');
  }
}
