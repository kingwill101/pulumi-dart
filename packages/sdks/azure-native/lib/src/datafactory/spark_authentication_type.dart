import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication method used to access the Spark server.
enum SparkAuthenticationType implements pulumi.PulumiEnum<String> {
  anonymous("Anonymous"),
  username("Username"),
  usernameAndPassword("UsernameAndPassword"),
  windowsAzureHDInsightService("WindowsAzureHDInsightService");

  const SparkAuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static SparkAuthenticationType fromValue(String value) {
    for (final item in SparkAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SparkAuthenticationType value: $value');
  }
}
