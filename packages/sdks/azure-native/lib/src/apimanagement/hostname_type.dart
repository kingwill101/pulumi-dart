import 'package:pulumi/pulumi.dart' as pulumi;

/// Hostname type.
enum HostnameType implements pulumi.PulumiEnum<String> {
  valueProxy("Proxy"),
  valuePortal("Portal"),
  valueManagement("Management"),
  valueScm("Scm"),
  valueDeveloperPortal("DeveloperPortal"),
  valueConfigurationApi("ConfigurationApi");

  const HostnameType(this.wireValue);
  @override
  final String wireValue;

  static HostnameType fromValue(String value) {
    for (final item in HostnameType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostnameType value: $value');
  }
}
