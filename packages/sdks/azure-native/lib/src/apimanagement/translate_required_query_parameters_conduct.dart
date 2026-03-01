/// Strategy of translating required query parameters to template ones. By default has value 'template'. Possible values: 'template', 'query'
enum TranslateRequiredQueryParametersConduct {
  template("template"),
  query("query");

  const TranslateRequiredQueryParametersConduct(this.value);
  final String value;

  static TranslateRequiredQueryParametersConduct fromValue(String value) {
    for (final item in TranslateRequiredQueryParametersConduct.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TranslateRequiredQueryParametersConduct value: $value');
  }
}

