enum IntegrationType {
  valueAws("aws"),
  valueAwsProxy("aws_proxy"),
  valueHttp("http"),
  valueHttpProxy("http_proxy"),
  valueMock("mock");

  const IntegrationType(this.wireValue);
  final String wireValue;

  static IntegrationType fromValue(String value) {
    for (final item in IntegrationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntegrationType value: $value');
  }
}

