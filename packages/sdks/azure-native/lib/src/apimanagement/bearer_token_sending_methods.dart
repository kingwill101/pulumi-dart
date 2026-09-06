import 'package:pulumi/pulumi.dart' as pulumi;

/// Form of an authorization grant, which the client uses to request the access token.
enum BearerTokenSendingMethods implements pulumi.PulumiEnum<String> {
  valueAuthorizationHeader("authorizationHeader"),
  valueQuery("query");

  const BearerTokenSendingMethods(this.wireValue);
  @override
  final String wireValue;

  static BearerTokenSendingMethods fromValue(String value) {
    for (final item in BearerTokenSendingMethods.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BearerTokenSendingMethods value: $value');
  }
}
