/// Current status of the share.
enum ShareStatus {
  valueOffline("Offline"),
  valueUnknown("Unknown"),
  valueOK("OK"),
  valueUpdating("Updating"),
  valueNeedsAttention("NeedsAttention");

  const ShareStatus(this.wireValue);
  final String wireValue;

  static ShareStatus fromValue(String value) {
    for (final item in ShareStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ShareStatus value: $value');
  }
}
