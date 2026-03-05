/// Specify the public IP allocation type
enum PublicIPAllocationMethod {
  dynamic_("Dynamic"),
  static("Static");

  const PublicIPAllocationMethod(this.wireValue);
  final String wireValue;

  static PublicIPAllocationMethod fromValue(String value) {
    for (final item in PublicIPAllocationMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicIPAllocationMethod value: $value');
  }
}

