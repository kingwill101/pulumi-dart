import 'package:pulumi/pulumi.dart' as pulumi;

/// Property to indicate if the Express Route Gateway serves traffic when there are multiple Express Route Gateways in the vnet
enum AdminState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const AdminState(this.wireValue);
  @override
  final String wireValue;

  static AdminState fromValue(String value) {
    for (final item in AdminState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AdminState value: $value');
  }
}
