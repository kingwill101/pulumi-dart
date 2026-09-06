import 'package:pulumi/pulumi.dart' as pulumi;

/// Authentication mode for Geneva Actions
enum GenevaActionAuthenticationMode implements pulumi.PulumiEnum<String> {
  oAuth("OAuth"),
  wSTrust("WS-Trust");

  const GenevaActionAuthenticationMode(this.wireValue);
  @override
  final String wireValue;

  static GenevaActionAuthenticationMode fromValue(String value) {
    for (final item in GenevaActionAuthenticationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GenevaActionAuthenticationMode value: $value');
  }
}
