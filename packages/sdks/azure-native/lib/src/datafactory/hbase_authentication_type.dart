import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication mechanism to use to connect to the HBase server.
enum HBaseAuthenticationType implements pulumi.PulumiEnum<String> {
  anonymous("Anonymous"),
  basic("Basic");

  const HBaseAuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static HBaseAuthenticationType fromValue(String value) {
    for (final item in HBaseAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HBaseAuthenticationType value: $value');
  }
}
