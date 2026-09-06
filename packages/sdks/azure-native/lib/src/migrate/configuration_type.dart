import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the configuration type.
enum ConfigurationType implements pulumi.PulumiEnum<String> {
  valueIISConnectionString("IISConnectionString"),
  valueIISAuthentication("IISAuthentication"),
  valueApacheTomcatContextResource("ApacheTomcatContextResource");

  const ConfigurationType(this.wireValue);
  @override
  final String wireValue;

  static ConfigurationType fromValue(String value) {
    for (final item in ConfigurationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConfigurationType value: $value');
  }
}
