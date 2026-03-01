/// Property value
enum NetworkInterfaceStatus {
  associated("associated"),
  attaching("attaching"),
  available("available"),
  detaching("detaching"),
  inUse("in-use");

  const NetworkInterfaceStatus(this.value);
  final String value;

  static NetworkInterfaceStatus fromValue(String value) {
    for (final item in NetworkInterfaceStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkInterfaceStatus value: $value');
  }
}

