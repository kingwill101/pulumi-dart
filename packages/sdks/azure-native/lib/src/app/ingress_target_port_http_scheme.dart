import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether an http app listens on http or https
enum IngressTargetPortHttpScheme implements pulumi.PulumiEnum<String> {
  valueHttp("http"),
  valueHttps("https");

  const IngressTargetPortHttpScheme(this.wireValue);
  @override
  final String wireValue;

  static IngressTargetPortHttpScheme fromValue(String value) {
    for (final item in IngressTargetPortHttpScheme.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IngressTargetPortHttpScheme value: $value');
  }
}
