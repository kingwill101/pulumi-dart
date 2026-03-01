/// The identity type. Set this to 'SystemAssigned' in order to automatically create and assign an Azure Active Directory principal for the resource.
enum IdentityType {
  valueSystemAssigned("SystemAssigned");

  const IdentityType(this.value);
  final String value;

  static IdentityType fromValue(String value) {
    for (final item in IdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IdentityType value: $value');
  }
}

