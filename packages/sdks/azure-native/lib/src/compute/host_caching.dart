import 'package:pulumi/pulumi.dart' as pulumi;

/// The host caching of the disk. Valid values are 'None', 'ReadOnly', and 'ReadWrite'
enum HostCaching implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueReadOnly("ReadOnly"),
  valueReadWrite("ReadWrite");

  const HostCaching(this.wireValue);
  @override
  final String wireValue;

  static HostCaching fromValue(String value) {
    for (final item in HostCaching.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostCaching value: $value');
  }
}
