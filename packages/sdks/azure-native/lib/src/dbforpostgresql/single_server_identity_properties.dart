/// The identity type. Set this to 'SystemAssigned' in order to automatically create and assign an Azure Active Directory principal for the resource.
enum SingleServerIdentityProperties {
  valueSystemAssigned("SystemAssigned");

  const SingleServerIdentityProperties(this.wireValue);
  final String wireValue;

  static SingleServerIdentityProperties fromValue(String value) {
    for (final item in SingleServerIdentityProperties.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SingleServerIdentityProperties value: $value');
  }
}

