import 'package:pulumi/pulumi.dart' as pulumi;

/// Strategy of translating required query parameters to template ones. By default has value 'template'. Possible values: 'template', 'query'
enum TranslateRequiredQueryParametersConduct implements pulumi.PulumiEnum<String> {
  template("template"),
  query("query");

  const TranslateRequiredQueryParametersConduct(this.wireValue);
  @override
  final String wireValue;

  static TranslateRequiredQueryParametersConduct fromValue(String value) {
    for (final item in TranslateRequiredQueryParametersConduct.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TranslateRequiredQueryParametersConduct value: $value');
  }
}
