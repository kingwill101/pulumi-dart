/// East-West gateway visibility.
enum EastWestGatewayVisibility {
  internal("Internal"),
  external("External");

  const EastWestGatewayVisibility(this.wireValue);
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
