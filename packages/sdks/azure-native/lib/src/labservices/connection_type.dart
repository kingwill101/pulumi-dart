import 'package:pulumi/pulumi.dart' as pulumi;

/// The enabled access level for Web Access over SSH.
enum ConnectionType implements pulumi.PulumiEnum<String> {
  valuePublic("Public"),
  valuePrivate("Private"),
  valueNone("None");

  const ConnectionType(this.wireValue);
  @override
  final String wireValue;

  static ConnectionType fromValue(String value) {
    for (final item in ConnectionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionType value: $value');
  }
}
