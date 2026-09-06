import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource Type of Application.
enum RemoteApplicationType implements pulumi.PulumiEnum<String> {
  valueInBuilt("InBuilt"),
  valueMsixApplication("MsixApplication");

  const RemoteApplicationType(this.wireValue);
  @override
  final String wireValue;

  static RemoteApplicationType fromValue(String value) {
    for (final item in RemoteApplicationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RemoteApplicationType value: $value');
  }
}
