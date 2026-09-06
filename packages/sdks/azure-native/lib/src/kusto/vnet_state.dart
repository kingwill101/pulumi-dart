import 'package:pulumi/pulumi.dart' as pulumi;

/// When enabled, the cluster is deployed into the configured subnet, when disabled it will be removed from the subnet.
enum VnetState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const VnetState(this.wireValue);
  @override
  final String wireValue;

  static VnetState fromValue(String value) {
    for (final item in VnetState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VnetState value: $value');
  }
}
