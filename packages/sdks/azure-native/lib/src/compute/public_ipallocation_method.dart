/// Specify the public IP allocation type
enum PublicIPAllocationMethod {
  dynamic("Dynamic"),
  static("Static");

  const PublicIPAllocationMethod(this.value);
  final String value;

  static PublicIPAllocationMethod fromValue(String value) {
    for (final item in PublicIPAllocationMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicIPAllocationMethod value: $value');
  }
}

