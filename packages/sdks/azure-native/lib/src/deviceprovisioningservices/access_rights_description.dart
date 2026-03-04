/// Rights that this key has.
enum AccessRightsDescription {
  valueServiceConfig("ServiceConfig"),
  valueEnrollmentRead("EnrollmentRead"),
  valueEnrollmentWrite("EnrollmentWrite"),
  valueDeviceConnect("DeviceConnect"),
  valueRegistrationStatusRead("RegistrationStatusRead"),
  valueRegistrationStatusWrite("RegistrationStatusWrite");

  const AccessRightsDescription(this.wireValue);
  final String wireValue;

  static AccessRightsDescription fromValue(String value) {
    for (final item in AccessRightsDescription.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessRightsDescription value: $value');
  }
}
