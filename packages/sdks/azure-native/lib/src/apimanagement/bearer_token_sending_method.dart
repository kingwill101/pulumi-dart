import 'package:pulumi/pulumi.dart' as pulumi;

enum BearerTokenSendingMethod implements pulumi.PulumiEnum<String> {
  valueAuthorizationHeader("authorizationHeader"),
  valueQuery("query");

  const BearerTokenSendingMethod(this.wireValue);
  @override
  final String wireValue;

  static BearerTokenSendingMethod fromValue(String value) {
    for (final item in BearerTokenSendingMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BearerTokenSendingMethod value: $value');
  }
}
