/// The tag or digest type.
enum AkriConnectorsTagDigestType {
  tag("Tag"),
  digest("Digest");

  const AkriConnectorsTagDigestType(this.wireValue);
  final String wireValue;

  static AkriConnectorsTagDigestType fromValue(String value) {
    for (final item in AkriConnectorsTagDigestType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AkriConnectorsTagDigestType value: $value');
  }
}
