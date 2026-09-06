import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of destination. Input can be IsolationDomain or Direct.
enum DestinationType implements pulumi.PulumiEnum<String> {
  valueIsolationDomain("IsolationDomain"),
  valueDirect("Direct");

  const DestinationType(this.wireValue);
  @override
  final String wireValue;

  static DestinationType fromValue(String value) {
    for (final item in DestinationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DestinationType value: $value');
  }
}
