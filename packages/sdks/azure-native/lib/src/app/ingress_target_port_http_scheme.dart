/// Whether an http app listens on http or https
enum IngressTargetPortHttpScheme {
  valueHttp("http"),
  valueHttps("https");

  const IngressTargetPortHttpScheme(this.value);
  final String value;

  static IngressTargetPortHttpScheme fromValue(String value) {
    for (final item in IngressTargetPortHttpScheme.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IngressTargetPortHttpScheme value: $value');
  }
}

