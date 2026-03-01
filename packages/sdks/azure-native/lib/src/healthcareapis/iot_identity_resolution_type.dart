/// Determines how resource identity is resolved on the destination.
enum IotIdentityResolutionType {
  valueCreate("Create"),
  valueLookup("Lookup");

  const IotIdentityResolutionType(this.value);
  final String value;

  static IotIdentityResolutionType fromValue(String value) {
    for (final item in IotIdentityResolutionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IotIdentityResolutionType value: $value');
  }
}

