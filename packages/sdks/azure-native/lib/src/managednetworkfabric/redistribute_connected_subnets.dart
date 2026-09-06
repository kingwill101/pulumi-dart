import 'package:pulumi/pulumi.dart' as pulumi;

/// Advertise Connected Subnets. Ex: "True" | "False".
enum RedistributeConnectedSubnets implements pulumi.PulumiEnum<String> {
  valueTrue("True"),
  valueFalse("False");

  const RedistributeConnectedSubnets(this.wireValue);
  @override
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
