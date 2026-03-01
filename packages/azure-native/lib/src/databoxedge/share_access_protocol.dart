/// Access protocol to be used by the share.
enum ShareAccessProtocol {
  valueSMB("SMB"),
  valueNFS("NFS");

  const ShareAccessProtocol(this.value);
  final String value;

  static ShareAccessProtocol fromValue(String value) {
    for (final item in ShareAccessProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ShareAccessProtocol value: $value');
  }
}

