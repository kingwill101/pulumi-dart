/// Property value
enum SourceAuthType {
  cODECONNECTIONS("CODECONNECTIONS"),
  oAUTH("OAUTH");

  const SourceAuthType(this.wireValue);
  final String wireValue;

  static SourceAuthType fromValue(String value) {
    for (final item in SourceAuthType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceAuthType value: $value');
  }
}
