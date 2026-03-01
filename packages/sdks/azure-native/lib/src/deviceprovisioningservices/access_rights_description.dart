/// Rights that this key has.
enum AccessRightsDescription {
  valueServiceConfig("ServiceConfig"),
  valueEnrollmentRead("EnrollmentRead"),
  valueEnrollmentWrite("EnrollmentWrite"),
  valueDeviceConnect("DeviceConnect"),
  valueRegistrationStatusRead("RegistrationStatusRead"),
  valueRegistrationStatusWrite("RegistrationStatusWrite");

  const AccessRightsDescription(this.value);
  final String value;

  static AccessRightsDescription fromValue(String value) {
    for (final item in AccessRightsDescription.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessRightsDescription value: $value');
  }
}

