/// The type of Managed Identity used by the DigitalTwinsInstance.
enum DigitalTwinsIdentityType {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned"),
  valueSystemAssignedUserAssigned("SystemAssigned,UserAssigned");

  const DigitalTwinsIdentityType(this.value);
  final String value;

  static DigitalTwinsIdentityType fromValue(String value) {
    for (final item in DigitalTwinsIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DigitalTwinsIdentityType value: $value');
  }
}

