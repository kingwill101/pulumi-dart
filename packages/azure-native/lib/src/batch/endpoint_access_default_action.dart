/// Default action for endpoint access. It is only applicable when publicNetworkAccess is enabled.
enum EndpointAccessDefaultAction {
  allow("Allow"),
  deny("Deny");

  const EndpointAccessDefaultAction(this.value);
  final String value;

  static EndpointAccessDefaultAction fromValue(String value) {
    for (final item in EndpointAccessDefaultAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointAccessDefaultAction value: $value');
  }
}

