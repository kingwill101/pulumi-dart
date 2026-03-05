/// Type of Azure Active Directory Managed Identity.
enum CaptureIdentityType {
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

  const CaptureIdentityType(this.wireValue);
  final String wireValue;

  static CaptureIdentityType fromValue(String value) {
    for (final item in CaptureIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CaptureIdentityType value: $value');
  }
}

