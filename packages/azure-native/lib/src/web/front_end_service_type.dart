enum FrontEndServiceType {
  valueNodePort("NodePort"),
  valueLoadBalancer("LoadBalancer");

  const FrontEndServiceType(this.value);
  final String value;

  static FrontEndServiceType fromValue(String value) {
    for (final item in FrontEndServiceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FrontEndServiceType value: $value');
  }
}

