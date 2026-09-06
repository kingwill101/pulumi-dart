import 'package:pulumi/pulumi.dart' as pulumi;

/// Advertise Static Routes. Ex: "True" | "False".
enum RedistributeStaticRoutes implements pulumi.PulumiEnum<String> {
  valueTrue("True"),
  valueFalse("False");

  const RedistributeStaticRoutes(this.wireValue);
  @override
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
