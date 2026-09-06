import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies whether the volume is enabled for Azure VMware Solution (AVS) datastore purpose
enum AvsDataStore implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const AvsDataStore(this.wireValue);
  @override
  final String wireValue;

  static AvsDataStore fromValue(String value) {
    for (final item in AvsDataStore.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AvsDataStore value: $value');
  }
}
