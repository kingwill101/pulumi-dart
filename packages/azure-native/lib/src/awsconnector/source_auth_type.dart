/// Property value
enum SourceAuthType {
  cODECONNECTIONS("CODECONNECTIONS"),
  oAUTH("OAUTH");

  const SourceAuthType(this.value);
  final String value;

  static SourceAuthType fromValue(String value) {
    for (final item in SourceAuthType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceAuthType value: $value');
  }
}

