/// Property value
enum NetworkInterfaceStatus {
  associated("associated"),
  attaching("attaching"),
  available("available"),
  detaching("detaching"),
  inUse("in-use");

  const NetworkInterfaceStatus(this.wireValue);
  final String wireValue;

  static NetworkInterfaceStatus fromValue(String value) {
    for (final item in NetworkInterfaceStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkInterfaceStatus value: $value');
  }
}

