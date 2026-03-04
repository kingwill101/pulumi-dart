/// Set of supported protocol types, which include NFSv3, NFSv4 and SMB protocol
enum ProtocolTypes {
  nFSv3("NFSv3"),
  nFSv4("NFSv4"),
  sMB("SMB");

  const ProtocolTypes(this.wireValue);
  final String wireValue;

  static ProtocolTypes fromValue(String value) {
    for (final item in ProtocolTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProtocolTypes value: $value');
  }
}
