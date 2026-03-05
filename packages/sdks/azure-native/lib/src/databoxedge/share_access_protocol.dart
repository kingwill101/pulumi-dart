/// Access protocol to be used by the share.
enum ShareAccessProtocol {
  valueSMB("SMB"),
  valueNFS("NFS");

  const ShareAccessProtocol(this.wireValue);
  final String wireValue;

  static ShareAccessProtocol fromValue(String value) {
    for (final item in ShareAccessProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ShareAccessProtocol value: $value');
  }
}

