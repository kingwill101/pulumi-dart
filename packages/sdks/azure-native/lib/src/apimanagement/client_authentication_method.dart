import 'package:pulumi/pulumi.dart' as pulumi;

enum ClientAuthenticationMethod implements pulumi.PulumiEnum<String> {
  valueBasic("Basic"),
  valueBody("Body");

  const ClientAuthenticationMethod(this.wireValue);
  @override
  final String wireValue;

  static ClientAuthenticationMethod fromValue(String value) {
    for (final item in ClientAuthenticationMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClientAuthenticationMethod value: $value');
  }
}
