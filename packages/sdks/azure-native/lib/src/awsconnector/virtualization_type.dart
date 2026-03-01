/// Property value
enum VirtualizationType {
  hvm("hvm"),
  paravirtual("paravirtual");

  const VirtualizationType(this.value);
  final String value;

  static VirtualizationType fromValue(String value) {
    for (final item in VirtualizationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualizationType value: $value');
  }
}

