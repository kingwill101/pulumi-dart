import 'package:pulumi/pulumi.dart' as pulumi;

/// whether to enable ssl verification
enum EnableSslVerification implements pulumi.PulumiEnum<String> {
  true_("true"),
  false_("false");

  const EnableSslVerification(this.wireValue);
  @override
  final String wireValue;

  static EnableSslVerification fromValue(String value) {
    for (final item in EnableSslVerification.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnableSslVerification value: $value');
  }
}
