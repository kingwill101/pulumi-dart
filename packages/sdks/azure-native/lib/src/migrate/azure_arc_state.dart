import 'package:pulumi/pulumi.dart' as pulumi;

/// AzureArc state indicates whether to include azure arc related costs in on-premises or not.
enum AzureArcState implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled"),
  unknown("Unknown");

  const AzureArcState(this.wireValue);
  @override
  final String wireValue;

  static AzureArcState fromValue(String value) {
    for (final item in AzureArcState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureArcState value: $value');
  }
}
