/// The type of Azure hop the packet should be sent to.
enum RouteNextHopType {
  valueVirtualNetworkGateway("VirtualNetworkGateway"),
  valueVnetLocal("VnetLocal"),
  valueInternet("Internet"),
  valueVirtualAppliance("VirtualAppliance"),
  valueNone("None");

  const RouteNextHopType(this.value);
  final String value;

  static RouteNextHopType fromValue(String value) {
    for (final item in RouteNextHopType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouteNextHopType value: $value');
  }
}

