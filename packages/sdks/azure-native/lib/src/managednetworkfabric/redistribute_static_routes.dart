/// Advertise Static Routes. Ex: "True" | "False".
enum RedistributeStaticRoutes {
  valueTrue("True"),
  valueFalse("False");

  const RedistributeStaticRoutes(this.wireValue);
  final String wireValue;

  static RedistributeStaticRoutes fromValue(String value) {
    for (final item in RedistributeStaticRoutes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RedistributeStaticRoutes value: $value');
  }
}

