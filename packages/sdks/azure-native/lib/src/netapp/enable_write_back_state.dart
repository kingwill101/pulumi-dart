import 'package:pulumi/pulumi.dart' as pulumi;

/// Flag indicating whether writeback is enabled for the cache.
enum EnableWriteBackState implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled");

  const EnableWriteBackState(this.wireValue);
  @override
  final String wireValue;

  static EnableWriteBackState fromValue(String value) {
    for (final item in EnableWriteBackState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnableWriteBackState value: $value');
  }
}
