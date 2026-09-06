import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates if the client is enabled or not. Default value is Enabled.
enum ClientState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ClientState(this.wireValue);
  @override
  final String wireValue;

  static ClientState fromValue(String value) {
    for (final item in ClientState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClientState value: $value');
  }
}
