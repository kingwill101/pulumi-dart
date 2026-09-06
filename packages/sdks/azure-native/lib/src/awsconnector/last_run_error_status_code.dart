import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum LastRunErrorStatusCode implements pulumi.PulumiEnum<String> {
  eRROR("ERROR"),
  nONE("NONE");

  const LastRunErrorStatusCode(this.wireValue);
  @override
  final String wireValue;

  static LastRunErrorStatusCode fromValue(String value) {
    for (final item in LastRunErrorStatusCode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LastRunErrorStatusCode value: $value');
  }
}
