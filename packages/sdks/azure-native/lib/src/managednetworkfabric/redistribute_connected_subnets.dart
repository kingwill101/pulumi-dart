/// Advertise Connected Subnets. Ex: "True" | "False".
enum RedistributeConnectedSubnets {
  valueTrue("True"),
  valueFalse("False");

  const RedistributeConnectedSubnets(this.wireValue);
  final String wireValue;

  static RedistributeConnectedSubnets fromValue(String value) {
    for (final item in RedistributeConnectedSubnets.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RedistributeConnectedSubnets value: $value');
  }
}
