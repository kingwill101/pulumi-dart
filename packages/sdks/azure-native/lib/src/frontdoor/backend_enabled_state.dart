import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether to enable use of this backend. Permitted values are 'Enabled' or 'Disabled'
enum BackendEnabledState implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const BackendEnabledState(this.wireValue);
  @override
  final String wireValue;

  static BackendEnabledState fromValue(String value) {
    for (final item in BackendEnabledState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendEnabledState value: $value');
  }
}
