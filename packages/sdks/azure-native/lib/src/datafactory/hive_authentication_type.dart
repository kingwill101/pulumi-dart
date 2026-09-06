import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication method used to access the Hive server.
enum HiveAuthenticationType implements pulumi.PulumiEnum<String> {
  anonymous("Anonymous"),
  username("Username"),
  usernameAndPassword("UsernameAndPassword"),
  windowsAzureHDInsightService("WindowsAzureHDInsightService");

  const HiveAuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static HiveAuthenticationType fromValue(String value) {
    for (final item in HiveAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HiveAuthenticationType value: $value');
  }
}
