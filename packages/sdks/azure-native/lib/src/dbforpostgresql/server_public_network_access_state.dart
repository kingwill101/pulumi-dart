import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates if public network access is enabled or not. This is only supported for servers that are not integrated into a virtual network which is owned and provided by customer when server is deployed.
enum ServerPublicNetworkAccessState implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const ServerPublicNetworkAccessState(this.wireValue);
  @override
  final String wireValue;

  static ServerPublicNetworkAccessState fromValue(String value) {
    for (final item in ServerPublicNetworkAccessState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerPublicNetworkAccessState value: $value');
  }
}
