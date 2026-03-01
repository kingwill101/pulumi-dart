/// The authentication protocol that is used for the file share. Can only be specified when creating a share.
enum EnabledProtocols {
  valueSMB("SMB"),
  valueNFS("NFS");

  const EnabledProtocols(this.value);
  final String value;

  static EnabledProtocols fromValue(String value) {
    for (final item in EnabledProtocols.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnabledProtocols value: $value');
  }
}

