/// Type of Azure Active Directory Managed Identity.
enum CaptureIdentityType {
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

  const CaptureIdentityType(this.value);
  final String value;

  static CaptureIdentityType fromValue(String value) {
    for (final item in CaptureIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CaptureIdentityType value: $value');
  }
}

