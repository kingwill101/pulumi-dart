import 'package:pulumi/pulumi.dart' as pulumi;

/// AuthenticationType to be used for connection.
enum TeradataAuthenticationType implements pulumi.PulumiEnum<String> {
  basic("Basic"),
  windows("Windows");

  const TeradataAuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static TeradataAuthenticationType fromValue(String value) {
    for (final item in TeradataAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TeradataAuthenticationType value: $value');
  }
}
