/// Application Type
enum ApplicationType {
  valueSAPHANA("SAP-HANA"),
  valueORACLE("ORACLE");

  const ApplicationType(this.wireValue);
  final String wireValue;

  static ApplicationType fromValue(String value) {
    for (final item in ApplicationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationType value: $value');
  }
}

