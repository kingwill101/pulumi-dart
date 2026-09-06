import 'package:pulumi/pulumi.dart' as pulumi;

enum AuthorizationMethod implements pulumi.PulumiEnum<String> {
  valueHEAD("HEAD"),
  valueOPTIONS("OPTIONS"),
  valueTRACE("TRACE"),
  valueGET("GET"),
  valuePOST("POST"),
  valuePUT("PUT"),
  valuePATCH("PATCH"),
  valueDELETE("DELETE");

  const AuthorizationMethod(this.wireValue);
  @override
  final String wireValue;

  static AuthorizationMethod fromValue(String value) {
    for (final item in AuthorizationMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthorizationMethod value: $value');
  }
}
