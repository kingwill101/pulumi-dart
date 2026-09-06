import 'package:pulumi/pulumi.dart' as pulumi;

/// Responsibility role under which this Managed Network Group will be created
enum Kind implements pulumi.PulumiEnum<String> {
  valueConnectivity("Connectivity");

  const Kind(this.wireValue);
  @override
  final String wireValue;

  static Kind fromValue(String value) {
    for (final item in Kind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Kind value: $value');
  }
}
