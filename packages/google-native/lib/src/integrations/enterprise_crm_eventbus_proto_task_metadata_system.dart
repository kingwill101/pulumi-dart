enum EnterpriseCrmEventbusProtoTaskMetadataSystem {
  unspecifiedSystem("UNSPECIFIED_SYSTEM"),
  generic("GENERIC"),
  buganizer("BUGANIZER"),
  salesforce("SALESFORCE"),
  cloudSql("CLOUD_SQL"),
  plx("PLX"),
  sheets("SHEETS"),
  googleGroups("GOOGLE_GROUPS"),
  email("EMAIL"),
  spanner("SPANNER"),
  dataBridge("DATA_BRIDGE");

  const EnterpriseCrmEventbusProtoTaskMetadataSystem(this.value);
  final String value;

  static EnterpriseCrmEventbusProtoTaskMetadataSystem fromValue(String value) {
    for (final item in EnterpriseCrmEventbusProtoTaskMetadataSystem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown EnterpriseCrmEventbusProtoTaskMetadataSystem value: $value');
  }
}
