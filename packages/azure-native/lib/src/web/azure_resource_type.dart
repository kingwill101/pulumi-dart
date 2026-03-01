/// Azure resource type.
enum AzureResourceType {
  valueWebsite("Website"),
  valueTrafficManager("TrafficManager");

  const AzureResourceType(this.value);
  final String value;

  static AzureResourceType fromValue(String value) {
    for (final item in AzureResourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureResourceType value: $value');
  }
}

