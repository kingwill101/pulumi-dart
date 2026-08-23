/// Determines how resource identity is resolved on the destination.
enum IotIdentityResolutionType {
  valueCreate("Create"),
  valueLookup("Lookup");

  const IotIdentityResolutionType(this.wireValue);
  final String wireValue;

  static IotIdentityResolutionType fromValue(String value) {
    for (final item in IotIdentityResolutionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IotIdentityResolutionType value: $value');
  }
}
