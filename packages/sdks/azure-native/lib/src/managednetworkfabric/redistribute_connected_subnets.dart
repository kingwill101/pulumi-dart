/// Advertise Connected Subnets. Ex: "True" | "False".
enum RedistributeConnectedSubnets {
  valueTrue("True"),
  valueFalse("False");

  const RedistributeConnectedSubnets(this.value);
  final String value;

  static RedistributeConnectedSubnets fromValue(String value) {
    for (final item in RedistributeConnectedSubnets.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RedistributeConnectedSubnets value: $value');
  }
}

