/// Property value
enum LastRunErrorStatusCode {
  eRROR("ERROR"),
  nONE("NONE");

  const LastRunErrorStatusCode(this.wireValue);
  final String wireValue;

  static LastRunErrorStatusCode fromValue(String value) {
    for (final item in LastRunErrorStatusCode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LastRunErrorStatusCode value: $value');
  }
}
