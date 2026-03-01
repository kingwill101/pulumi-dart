enum IntegrationType {
  valueAws("aws"),
  valueAwsProxy("aws_proxy"),
  valueHttp("http"),
  valueHttpProxy("http_proxy"),
  valueMock("mock");

  const IntegrationType(this.value);
  final String value;

  static IntegrationType fromValue(String value) {
    for (final item in IntegrationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntegrationType value: $value');
  }
}

