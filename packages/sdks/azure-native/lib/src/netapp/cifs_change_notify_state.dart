import 'package:pulumi/pulumi.dart' as pulumi;

/// Flag indicating whether a CIFS change notification is enabled for the cache.
enum CifsChangeNotifyState implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled");

  const CifsChangeNotifyState(this.wireValue);
  @override
  final String wireValue;

  static CifsChangeNotifyState fromValue(String value) {
    for (final item in CifsChangeNotifyState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CifsChangeNotifyState value: $value');
  }
}
