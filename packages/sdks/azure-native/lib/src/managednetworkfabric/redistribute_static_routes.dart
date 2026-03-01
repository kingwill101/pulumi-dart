/// Advertise Static Routes. Ex: "True" | "False".
enum RedistributeStaticRoutes {
  valueTrue("True"),
  valueFalse("False");

  const RedistributeStaticRoutes(this.value);
  final String value;

  static RedistributeStaticRoutes fromValue(String value) {
    for (final item in RedistributeStaticRoutes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RedistributeStaticRoutes value: $value');
  }
}

