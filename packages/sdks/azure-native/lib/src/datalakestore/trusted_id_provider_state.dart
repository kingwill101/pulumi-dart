import 'package:pulumi/pulumi.dart' as pulumi;

/// The current state of the trusted identity provider feature for this Data Lake Store account.
enum TrustedIdProviderState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const TrustedIdProviderState(this.wireValue);
  @override
  final String wireValue;

  static TrustedIdProviderState fromValue(String value) {
    for (final item in TrustedIdProviderState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TrustedIdProviderState value: $value');
  }
}
