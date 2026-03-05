/// Type of the Java Component.
enum JavaComponentType {
  valueSpringBootAdmin("SpringBootAdmin"),
  valueSpringCloudEureka("SpringCloudEureka"),
  valueSpringCloudConfig("SpringCloudConfig"),
  valueSpringCloudGateway("SpringCloudGateway"),
  valueNacos("Nacos");

  const JavaComponentType(this.wireValue);
  final String wireValue;

  static JavaComponentType fromValue(String value) {
    for (final item in JavaComponentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JavaComponentType value: $value');
  }
}

