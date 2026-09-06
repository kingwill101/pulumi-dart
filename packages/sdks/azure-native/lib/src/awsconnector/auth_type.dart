import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum AuthType implements pulumi.PulumiEnum<String> {
  bASICAUTH("BASIC_AUTH"),
  cODECONNECTIONS("CODECONNECTIONS"),
  oAUTH("OAUTH"),
  pERSONALACCESSTOKEN("PERSONAL_ACCESS_TOKEN");

  const AuthType(this.wireValue);
  @override
  final String wireValue;

  static AuthType fromValue(String value) {
    for (final item in AuthType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthType value: $value');
  }
}
