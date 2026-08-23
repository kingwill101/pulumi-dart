/// The type of Managed Identity used by the DigitalTwinsInstance.
enum DigitalTwinsIdentityType {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned"),
  valueSystemAssignedUserAssigned("SystemAssigned,UserAssigned");

  const DigitalTwinsIdentityType(this.wireValue);
  final String wireValue;

  static DigitalTwinsIdentityType fromValue(String value) {
    for (final item in DigitalTwinsIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DigitalTwinsIdentityType value: $value');
  }
}
