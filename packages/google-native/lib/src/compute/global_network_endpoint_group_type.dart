/// Specify the type of this network endpoint group. Only LOAD_BALANCING is valid for now.
enum GlobalNetworkEndpointGroupType {
  loadBalancing("LOAD_BALANCING");

  const GlobalNetworkEndpointGroupType(this.value);
  final String value;

  static GlobalNetworkEndpointGroupType fromValue(String value) {
    for (final item in GlobalNetworkEndpointGroupType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalNetworkEndpointGroupType value: $value');
  }
}

