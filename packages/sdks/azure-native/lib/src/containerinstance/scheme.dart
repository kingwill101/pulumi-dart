import 'package:pulumi/pulumi.dart' as pulumi;

/// The scheme.
enum Scheme implements pulumi.PulumiEnum<String> {
  valueHttp("http"),
  valueHttps("https");

  const Scheme(this.wireValue);
  @override
  final String wireValue;

  static Scheme fromValue(String value) {
    for (final item in Scheme.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Scheme value: $value');
  }
}
