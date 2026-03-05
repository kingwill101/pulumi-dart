/// Property value
enum VirtualizationType {
  hvm("hvm"),
  paravirtual("paravirtual");

  const VirtualizationType(this.wireValue);
  final String wireValue;

  static VirtualizationType fromValue(String value) {
    for (final item in VirtualizationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualizationType value: $value');
  }
}

