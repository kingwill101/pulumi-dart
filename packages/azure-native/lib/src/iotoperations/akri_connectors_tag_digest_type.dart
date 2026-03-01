/// The tag or digest type.
enum AkriConnectorsTagDigestType {
  tag("Tag"),
  digest("Digest");

  const AkriConnectorsTagDigestType(this.value);
  final String value;

  static AkriConnectorsTagDigestType fromValue(String value) {
    for (final item in AkriConnectorsTagDigestType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AkriConnectorsTagDigestType value: $value');
  }
}

