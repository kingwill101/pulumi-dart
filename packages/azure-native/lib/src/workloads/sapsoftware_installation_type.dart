/// The SAP software installation type.
enum SAPSoftwareInstallationType {
  serviceInitiated("ServiceInitiated"),
  sAPInstallWithoutOSConfig("SAPInstallWithoutOSConfig"),
  external("External");

  const SAPSoftwareInstallationType(this.value);
  final String value;

  static SAPSoftwareInstallationType fromValue(String value) {
    for (final item in SAPSoftwareInstallationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SAPSoftwareInstallationType value: $value');
  }
}

