/// Group connectivity type.
enum GroupConnectivity {
  valueNone("None"),
  valueDirectlyConnected("DirectlyConnected");

  const GroupConnectivity(this.value);
  final String value;

  static GroupConnectivity fromValue(String value) {
    for (final item in GroupConnectivity.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GroupConnectivity value: $value');
  }
}

