import 'package:pulumi/pulumi.dart' as pulumi;

/// East-West gateway visibility.
enum EastWestGatewayVisibility implements pulumi.PulumiEnum<String> {
  internal("Internal"),
  external("External");

  const EastWestGatewayVisibility(this.wireValue);
  @override
  final String wireValue;

  static EastWestGatewayVisibility fromValue(String value) {
    for (final item in EastWestGatewayVisibility.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EastWestGatewayVisibility value: $value');
  }
}
